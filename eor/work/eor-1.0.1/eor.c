/* eor.c
 *
 * Calculate parity data to a given set of files
 */

/*
    Copyright 2010, Jan Šmydke
    All rights reserved.

    This file is a part of "eor"

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

      1. Redistributions of source code must retain the above copyright
         notice, this list of conditions and the following disclaimer.
      2. Redistributions in binary form must reproduce the above copyright
         notice, this list of conditions and the following disclaimer in the
         documentation and/or other materials provided with the distribution.

    THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/* HELP:
 *	eor -h
 */


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define VERSION_STRING "1.0.1"
#define BUFFER_LENGTH 512

int usage(char* cmd_name);


int main(int argc, char* argv[])
{
    /*** VARS ***/
    // {{{1
    int NumInputs;	    // number of input files
    FILE** Inputs;	    // pointers to input files

    int BufferLength = BUFFER_LENGTH;	// how much data (in unsigned long int) from each file is loaded in the buffer
    int BufferLengthBytes;		// the same like BufferLength, but in Bytes
    unsigned char** Buffer;		// stores data from files - to be XORed

    unsigned char* OutBuffer;
    int NumBytesGot;    // how many real data Bytes got into the Buffer (the largest value of each file)
    char* DontReadMask; // do not read from i-th file if this mask is true
    int aux_int;
    int i, j;

    int MaxOutBytesTotal = -1;	// write at most this amount of parity data (unlimited if negative)
    int NumOutBytesTotal = 0;	// how many Bytes has been written so far
    int NumOutBufferBytes;	// how many Bytes is written out of the OutBuffer


    char Status = 0;	    // if nonzero -> finish the program
    // }}}1


    /*** INIT ***/
    // {{{1
    while((i = getopt(argc, argv, "hw:b:V")) != -1)
    {
	switch (i)
	{
	    case 'w':
		sscanf(optarg, "%d", &MaxOutBytesTotal);
		break;
	    case 'b':
		sscanf(optarg, "%d", &BufferLength);
		break;
	    case 'V':
		fprintf(stderr, "eor version: %s\n", VERSION_STRING);
		return 0;
		break;
	    case 'h':
	    default:
		usage(argv[0]);
		return 0;
	}
    }
    // note that "optind" is an index of the next CL argument - the first input file

    BufferLengthBytes = BufferLength * sizeof(unsigned long int);

    NumInputs = argc - optind;
    if(NumInputs < 2)
    {
	fprintf(stderr, "%s error: Too few input files given.\n", argv[0]);
	usage(argv[0]);
	exit(1);
    }

    /* memory allocations */
    Inputs = (FILE**) malloc(NumInputs * sizeof(FILE*));
    for(i=0; i<NumInputs; i++)
	Inputs[i] = fopen(argv[i+optind], "r");

    Buffer = (unsigned char**) malloc(NumInputs * sizeof(unsigned char*));
    Buffer[0] = (unsigned char*) malloc(BufferLength * NumInputs * sizeof(unsigned long int));
    for(i=1; i<NumInputs; i++)
	Buffer[i] = Buffer[0] + i * BufferLengthBytes;

    OutBuffer = (unsigned char*) malloc(BufferLength * sizeof(unsigned long int));

    DontReadMask = (char*) malloc(NumInputs * sizeof(char));
    for(i=0; i<NumInputs; i++)
	DontReadMask[i] = 0;
    // }}}1


    /*** MAIN LOOP ***/
    // {{{1
    while(1)
    {
	if(Status) // END LOOP?
	    break;
	if((MaxOutBytesTotal >=0) && (NumOutBytesTotal >= MaxOutBytesTotal)) // END LOOP?
	{
	    Status = 1;
	    break;
	}


	/* READ INTO BUFFER */
	// {{{2
	NumBytesGot = 0;
	for(i=0; i<NumInputs; i++)
	{
	    if(DontReadMask[i])
	    {
		if(DontReadMask[i] == 1)
		{
		    for(j=0; j<BufferLengthBytes; j++)
			Buffer[i][j] = 0;
		    DontReadMask[i] = 2; // so next time, don't fill with zeros again
		}
	    }
	    else
	    {
		aux_int = fread(Buffer[i], sizeof(unsigned char), BufferLengthBytes, Inputs[i]);
		if(aux_int > NumBytesGot)
		    NumBytesGot = aux_int;

		for(j=aux_int; j<BufferLengthBytes; j++)
		    Buffer[i][j] = 0;

		if(aux_int < BufferLengthBytes)
		    DontReadMask[i] = 1;
	    }
	}
	// }}}2


	if(NumBytesGot < 1) // END LOOP?
	{
	    Status = 1;
	    break;
	}


	/* DO XOR */
	if(NumBytesGot == BufferLengthBytes) // use (unsigned long int) - faster
	{ // {{{2
	    for(j=0, NumOutBufferBytes=0; j<BufferLength; j++)
	    {
		((unsigned long int*) OutBuffer)[j] = ((unsigned long int*) Buffer[0])[j];
		for(i=1; i<NumInputs; i++) // NumInputs must be > 1
		    ((unsigned long int*) OutBuffer)[j] ^= ((unsigned long int*) Buffer[i])[j];

		if(((j + 1) * sizeof(unsigned long int) - 1) >= NumBytesGot) // END (THIS AND) OUTER LOOP?
		{
		    Status = 1;
		    NumOutBufferBytes = NumBytesGot;
		    NumOutBytesTotal += NumOutBufferBytes;
		    break;
		}

		NumOutBufferBytes += sizeof(unsigned long int);
		NumOutBytesTotal += sizeof(unsigned long int);

		if((MaxOutBytesTotal >=0) && (NumOutBytesTotal >= MaxOutBytesTotal)) // END (THIS AND) OUTER LOOP?
		{
		    Status = 1;
		    NumOutBufferBytes -= (NumOutBytesTotal - MaxOutBytesTotal);
		    NumOutBytesTotal = MaxOutBytesTotal;
		    break;
		}
	    }
	} // }}}2
	else // use (unsigned char)
	{ // {{{2
	    for(j=0, NumOutBufferBytes=0; j<BufferLengthBytes; j++, NumOutBufferBytes++, NumOutBytesTotal++)
	    {
		if(j >= NumBytesGot) // END (THIS AND) OUTER LOOP?
		{
		    Status = 1;
		    break;
		}

		if((MaxOutBytesTotal >=0) && (NumOutBytesTotal >= MaxOutBytesTotal)) // END (THIS AND) OUTER LOOP?
		{
		    Status = 1;
		    break;
		}

		OutBuffer[j] = Buffer[0][j];
		for(i=1; i<NumInputs; i++) // NumInputs must be > 1
		    OutBuffer[j] ^= Buffer[i][j];
	    }
	} // }}}2


	/* WRITE OUTPUT */
	fwrite(OutBuffer, sizeof(unsigned char), NumOutBufferBytes, stdout);

    }
    // }}}1


    /*** END ***/
    // {{{1
    for(i=0; i<NumInputs; i++)
	fclose(Inputs[i]);

    free(Inputs);
    free(Buffer[0]);
    free(Buffer);
    free(OutBuffer);
    free(DontReadMask);
    // }}}1

    return 0;
}


int usage(char* cmd_name)
{
    const char text[] = \
"Usage:\n\t%s [OPTIONS] file_1 file_2 [...] > parity\n\
\n\
   OPTIONS:\n\
\t-h\t\tprint this help and exit\n\
\n\
\t-w SIZE\t\twrite out at most SIZE Bytes\n\
\n\
\t-b SIZE\t\tlength of an input and output buffer\n\
\t\t\tin (unsigned long int) units (default 512)\n\
\n\
\t-V\t\tprint the program version and exit\n";

    fprintf(stderr, text, cmd_name);
    return 0;
}
