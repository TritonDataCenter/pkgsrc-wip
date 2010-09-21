/*
 * Copyright (c) 2004-2010 Greg Schenzel of AccessAxis.com
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*     This file is for the random password generator used by the program.
 */

#include <ctype.h>
#include <stdio.h>

#include "ldapuseradd.h"

#define RANDOM_DEV "/dev/urandom"

void pwgen(char **buffer, int pw_length)
{
    FILE *random;
    int i, c;
    char *buf = *buffer;

    random = fopen(RANDOM_DEV, "r");

    if (random == NULL || buf == NULL) {
        die("Could not harvest random password entropy");
    }

    for (i = 0; i < pw_length; i++) {
        c = fgetc(random);
        if (isalnum(c)) {
            buf[i] = (char) c;
        }
        else {
            i--;                //try again
        }
    }

    buf[pw_length] = 0;
    fclose(random);
}
