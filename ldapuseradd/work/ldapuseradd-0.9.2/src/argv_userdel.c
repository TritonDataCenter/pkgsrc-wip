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

#include "getopt.h"
#include "ldapuseradd.h"

/** Print program usage. */
void argv_parser_print_help_userdel(void)
{
    argv_parser_print_version();
    printf("\n" "Usage: ldapuserdel [OPTIONS] username\n");
    printf("   -h         --help            Print help and exit\n");
    printf
        ("   -x         --dump            Dump run-time config and exit\n");
    printf
        ("   -v         --verbose         Increase Verbosity (use up to 4 times)\n\n");
    printf("   -r                           Remove Home Directory\n");
}


/** Parse the command-line options. */
int argv_parser_userdel(int argc, char *const *argv, struct lua_struct *ua1)    //struct gengetopt_args_info *args_info)
{
    int c;                      /* Character of the parsed option.  */

    optarg = 0;
    optind = 1;
    opterr = 1;
    optopt = '?';

    set_defaults(DEL_ACCOUNT);

    while (1) {
        int option_index = 0;
        char *stop_char;

        static struct option long_options[] = {
            {"help", 0, NULL, 'h'},
            {"dump", 0, NULL, 'x'},
            {"verbose", 0, NULL, 'v'},
            {NULL, 0, NULL, 0}
        };

        stop_char = 0;
        c = getopt_long(argc, argv, "hrvx", long_options, &option_index);

        if (c == -1)
            break;              /* Exit from `while (1)' loop.  */

        switch (c) {
        /** ldapuseradd-specific options */
        case 'h':              /* Help  */
            argv_parser_print_help_userdel();
            exit(0);
            break;

        case 'x':              /* Dump Config */
            //read the config file
            if ((ua1->config = get_config(&ua1->num_stanzas)) == NULL) {
                die("Could not read " CONFIG_FILE);
            }
            print_config(ua1->config, ua1->num_stanzas);
            exit(0);
            break;

        case 'v':
            incr_verbosity();
            break;

        case 'r':              /* Remove home */
            ua1->purge_home = TRUE;
            break;

        case '?':              /* Invalid option.  */
            /* `getopt_long' already printed an error message.  */
            exit(EXIT_FAILURE);

        default:               /* bug: option not considered.  */
            fprintf(stderr, "%s: option unknown: %c\n", ARGV_PACKAGE, c);
            abort();
        }                       /* switch */
    }                           /* while */

    if (optind < argc) {
        int i;
        for (i = 0; optind < argc; i++) {
            switch (i) {
            case 0:
                ua1->current_account->user_name =
                    str_duplicate(argv[optind++]);
                break;
            default:
                die("Incorrect syntax");
            }
        }
    }
    else {
        die("User not specified");
    }

    return TRUE;
}
