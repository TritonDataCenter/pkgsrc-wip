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

/*     LDAP account management utilities entry point. Originally born to life as
 *     "NetizenWeb WebManager" or "acctmgmt" by AccessAxis.com. Has since been
 *     rebranded as ldapuseradd after:
 * 
 *     1. useradd/usermod/userdel and groupadd/groupmod/groupdel compatibility
 *        was achieved.
 *
 *     2. Code base was open-sourced under a BSD-style license.
 */

#include "ldapuseradd.h"

/**
 * catch_int: Here is the signal handler (to catch ctrl-c)
 */
void catch_int(int sig_num)
{
    signal(SIGINT, catch_int);
    run_command(STTY, "echo", 0);       //restore echo, in case ctrl-c was issued during password
    genlog(LOG_WARNING, "Exiting, as requested.");
    exit(0);
}

int main(int argc, char **argv)
{
    int newuser = TRUE, newgroup = TRUE;
    struct lua_struct uab;
    struct lua_struct *ua1 = &uab;
    struct user_account current_account;
    struct user_account newmod_account;

    ua1->current_account = &current_account;
    ua1->newmod_account = &newmod_account;

    //TODO: all we really need before argv parsers is default stanza. maybe set later?
    //read the config file
    if ((ua1->config = get_config(&ua1->num_stanzas)) == NULL) {
        die("Could not read " CONFIG_FILE);
    }

    //TODO: audit for more null values

    /* set the INT (Ctrl-C) signal handler to 'catch_int' */
    signal(SIGINT, catch_int);

    if (strstr(argv[0], "groupmod") != NULL) {
        argv_parser_groupmod(argc, argv, ua1);
    }
    else if (strstr(argv[0], "groupdel") != NULL) {
        argv_parser_groupdel(argc, argv, ua1);
    }
    else if (strstr(argv[0], "groupadd") != NULL) {
        argv_parser_groupadd(argc, argv, ua1);
    }
    else if (strstr(argv[0], "usermod") != NULL) {
        argv_parser_usermod(argc, argv, ua1);
    }
    else if (strstr(argv[0], "userdel") != NULL) {
        argv_parser_userdel(argc, argv, ua1);
    }
    else {
        argv_parser_useradd(argc, argv, ua1);
    }

    genlog(LOG_INFO, "Arguments Read.");

    if (strcmp(GETPARAM("global", "ldapbindpw"), "ASK") == 0) {
        puts("REQUEST: Enter password for LDAP bind (will not echo): ");
        run_command(STTY, "-echo", 0);
        fgets(ua1->admin, PWD_MAXLEN, stdin);
        ua1->admin[strlen(ua1->admin) - 1] = 0;
        run_command(STTY, "echo", 0);
    }
    else {
        strncpy(ua1->admin, GETPARAM("global", "ldapbindpw"), PWD_MAXLEN);
    }

    ua1->ld = lua_connect(ua1);

    switch (ua1->action) {
    case NEW_ACCOUNT:
    case MOD_ACCOUNT:
    case DEL_ACCOUNT:
    case CHECK:
        newuser = check_new_user(ua1);
        break;
    case NEW_GROUP:
    case MOD_GROUP:
    case DEL_GROUP:
        newgroup = check_new_group(ua1);
        break;
    default:
        die("Invalid Action Specified");
    }

    //TODO: same for groups
    if (!newuser) {
        ua1->cur_stanza = get_stanza(ua1);

        if (ua1->cur_stanza == NULL) {
            ua1->cur_stanza = GETPARAM("global", "default");
            fprintf(stderr,
                    "WARNING: Could not locate user group profile. Check that the user's gidNumber exists in ldapuseradd.conf. Using default.\n");
        }
    }

    switch (ua1->action) {
    case NEW_ACCOUNT:
        if (newuser)
            user_add(ua1);
        else
            die("User already exists");
        break;
    case NEW_GROUP:
        if (newgroup)
            group_add(ua1);
        else
            die("Group already exists");
        break;
    case CHECK:
        if (newuser)
            puts("checkuser: User doesn't exist.");
        else
            puts("checkuser: User exists.");
        break;
    case MOD_ACCOUNT:
        if (!newuser)
            user_mod(ua1);
        else
            die("User does not exist");
        break;
    case MOD_GROUP:
        if (!newgroup)
            group_mod(ua1);
        else
            die("Group does not exist");
        break;
    case DEL_ACCOUNT:
        if (!newuser)
            user_del(ua1);
        else
            die("User does not exist");
        break;
    case DEL_GROUP:
        if (!newgroup)
            group_del(ua1);
        else
            die("Group does not exist");
        break;
    }

//exit:
    lua_disconnect(ua1->ld);
    exit(0);
}
