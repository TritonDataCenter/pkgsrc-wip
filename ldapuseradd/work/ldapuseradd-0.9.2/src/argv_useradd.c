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
void argv_parser_print_help_useradd(void)
{
    argv_parser_print_version();
    printf("\n" "Usage: %s [OPTIONS] username\n", ARGV_PACKAGE);
    printf("   -h         --help            Print help and exit\n");
    printf
        ("   -x         --dump            Dump run-time config and exit\n");
    printf
        ("   -v         --verbose         Increase Verbosity (use up to 4 times)\n\n");
    printf("   -a STRING                    First name\n");
    printf("   -b STRING                    Last name\n");
    printf("   -c STRING                    Comment/gecos\n");
    printf("   -d STRING                    Home Directory\n");
    printf("   -E STRING                    E-Mail\n");
    printf("   -g INT                       Primary group\n");
    printf("   -G STRING                    Secondary groups\n");
    printf("   -m                           Unsupported\n");
    printf
        ("   -n STRING                    Config Stanza (account profile)\n");
    printf("   -k STRING                    Skeleton Directory\n");
    printf("   -o                           Unsupported\n");
    printf("   -p STRING                    Password\n");
    printf("   -s STRING                    Shell\n");
    printf("   -u INT                       User ID Number\n");
    printf("   -V VAR:VALUE                 Custom Schema Variable\n");

    printf(" Shadow Variables:\n");
    printf("   -e LONG                      Expiration date\n");
    printf("   -f LONG                      Inactive days\n");
    printf("   -L INT                       Last Change\n");
    printf("   -M INT                       Min Age\n");
    printf("   -X INT                       Max Age\n");
    printf("   -w INT                       Warn\n");
    printf("   -i INT                       Flag\n");

}


/** Parse the command-line options. */
int argv_parser_useradd(int argc, char *const *argv, struct lua_struct *ua1)    //struct gengetopt_args_info *args_info)
{
    int c;                      /* Character of the parsed option.  */
    char *colon_location, *tempval, *var, *val, **argsplit;
    char *pwbuf;

    optarg = 0;
    optind = 1;
    opterr = 1;
    optopt = '?';

    set_defaults(NEW_ACCOUNT);

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
        c = getopt_long(argc, argv,
                        "a:b:c:d:e:E:f:g:G:hi:L:mM:n:k:op:s:u:w:vV:xX:",
                        long_options, &option_index);

        if (c == -1)
            break;              /* Exit from `while (1)' loop.  */

        switch (c) {
        /** ldapuseradd-specific options */
        case 'h':              /* Help  */
            argv_parser_print_help_useradd();
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

        case 'a':              /* First Name  */
            ua1->current_account->firstname = str_duplicate(optarg);
            ua1->current_account->firstname_set = TRUE;
            break;

        case 'b':              /* Last Name  */
            ua1->current_account->surname = str_duplicate(optarg);
            ua1->current_account->surname_set = TRUE;
            break;

        case 'n':              /* New Account Stanza */
            ua1->cur_stanza = str_duplicate(optarg);
            ua1->cur_stanza_set = TRUE;
            break;

        case 'L':
            ua1->current_account->shadow_last_change =
                str_duplicate(optarg);
            ua1->current_account->shadow_last_change_set = TRUE;
            break;

        case 'M':
            ua1->current_account->shadow_min = str_duplicate(optarg);
            ua1->current_account->shadow_min_set = TRUE;
            break;

        case 'X':
            ua1->current_account->shadow_max = str_duplicate(optarg);
            ua1->current_account->shadow_max_set = TRUE;
            break;

        case 'w':
            ua1->current_account->shadow_warn = str_duplicate(optarg);
            ua1->current_account->shadow_warn_set = TRUE;
            break;

        case 'i':
            ua1->current_account->shadow_flag = str_duplicate(optarg);
            ua1->current_account->shadow_flag_set = TRUE;
            break;

        case 'E':
            ua1->current_account->mail = str_duplicate(optarg);
            ua1->current_account->mail_set = TRUE;
            break;

        case 'V':
            //TODO: what if var is specified in template but not on cmd line?
            //TODO: maybe optionally specify var in config file too?
            colon_location = strchr(optarg, ':');
            colon_location[0] = 0;
            tempval = &colon_location[1];

            var = (char *) malloc(strlen(optarg) + 8);
            sprintf(var, "%%(var:%s)", optarg);

            val = (char *) malloc(strlen(tempval) + 1);
            strcpy(val, tempval);

            argsplit = (char **) malloc(sizeof(char *) * 2);
            argsplit[1] = var;
            argsplit[0] = val;

            ua1->current_account->var_top =
                push_stack(ua1->current_account->var_top, argsplit);
            break;

        /** useradd-generic options */
        case 'c':              /* Comment/GECOS  */
            ua1->current_account->comment = str_duplicate(optarg);
            ua1->current_account->comment_set = TRUE;
            break;

        case 'd':              /* Home Directory */
            ua1->current_account->home_dir = str_duplicate(optarg);
            ua1->current_account->home_dir_set = TRUE;
            break;

        case 'e':              /* Expire Date  */
            ua1->current_account->shadow_expire = str_duplicate(optarg);
            ua1->current_account->shadow_expire_set = TRUE;
            break;

        case 'f':              /* Inactive Days */
            ua1->current_account->shadow_inactive = str_duplicate(optarg);
            ua1->current_account->shadow_inactive_set = TRUE;
            break;

        case 'g':              /* Group ID */
            if (isnumeric(optarg)) {
                ua1->current_account->grp = atoi(optarg);
            }
            else {
                ua1->current_account->grp = LUA_LATER;
                ua1->current_account->group_name = str_duplicate(optarg);
                ua1->current_account->group_name_set = TRUE;
            }
            ua1->current_account->grp_set = TRUE;
            break;

        case 'G':              /* Secondary Group IDs */
            ua1->current_account->sec_grps = str_duplicate(optarg);
            ua1->current_account->sec_grps_set = TRUE;
            break;

        case 'm':              /* Unsupported */
            break;

        case 'k':              /* Skeleton */
            ua1->skel = str_duplicate(optarg);
            ua1->skel_set = TRUE;
            break;

        case 'o':              /* Unsupported */
            break;

        case 'p':              /* Password */
            ua1->current_account->password = str_duplicate(optarg);
            ua1->current_account->password_set = TRUE;
            break;

        case 's':              /* Shell */
            ua1->current_account->shell = str_duplicate(optarg);
            ua1->current_account->shell_set = TRUE;
            break;

        case 'u':              /* User ID */
            ua1->current_account->usr = atoi(str_duplicate(optarg));
            ua1->current_account->usr_set = TRUE;
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
                ua1->current_account->user_name_set = TRUE;
                break;
            default:
                die("Incorrect syntax");
            }
        }
    }
    else {
        die("User not specified");
    }

    if (!ua1->current_account->password_set) {
        pwbuf = (char *) malloc(8 + 1);
        pwgen(&pwbuf, 8);
        ua1->current_account->password = pwbuf;
    }
    if (!ua1->current_account->comment_set)
        ua1->current_account->comment =
            str_duplicate(ua1->current_account->user_name);
    if (!ua1->current_account->firstname_set)
        ua1->current_account->firstname =
            str_duplicate(ua1->current_account->user_name);
    if (!ua1->current_account->surname_set)
        ua1->current_account->surname =
            str_duplicate(ua1->current_account->user_name);

    return TRUE;
}
