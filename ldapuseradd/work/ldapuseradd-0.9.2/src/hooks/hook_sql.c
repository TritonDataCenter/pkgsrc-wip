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

#include "hooks.h"

/** 
 * hook_sql.c - Create MySQL database for user when sql=true in config for this user type.
 * 
 * @author Greg Schenzel
 */

//TODO: Tweak and stress test hook_sql.

/**
 * Declare non-"hook entry point" routines here.
 */
FILE *openSQL(struct lua_struct *);
int closeSQL(FILE *);
int createSQLdb(struct lua_struct *);
int deleteSQLdb(struct lua_struct *);

int hook_sql_add(struct lua_struct *ua1)
{
    int ret;
    char logbuf[256];

    if (strcmp(GETPARAM(ua1->cur_stanza, "sql"), "true") == 0) {
        ret = createSQLdb(ua1);
        if (ret != 0) {
            genlog(LOG_WARNING, "Could not create MySQL database.");
            return FALSE;
        }
        else {
            sprintf(logbuf, "Created sql database %s",
                    ua1->current_account->user_name);
            genlog(LOG_NOTICE, logbuf);
        }
    }

    return TRUE;
}

int hook_sql_del(struct lua_struct *ua1)
{
    int ret;

    if (strcmp(GETPARAM(ua1->cur_stanza, "sql"), "true") == 0) {
        ret = deleteSQLdb(ua1);
        if (ret != 0) {
            genlog(LOG_WARNING, "Could not delete SQL database");
            return FALSE;
        }
        else {
            genlog(LOG_NOTICE, "Deleted SQL database");
        }
    }
    
    return TRUE;
}

FILE *openSQL(struct lua_struct *ua1)
{
    FILE *pr;
    char *sqluser = GETPARAM("global", "sqluser");
    char *sqlhost = GETPARAM("global", "sqlserver");
    char *cmd;

    if (strcmp(GETPARAM("global", "sqlpw"), "ASK") == 0) {
        puts("REQUEST: Enter password for MySQL admin (will not echo): ");
        run_command(STTY, "-echo", 0);
        fgets(ua1->myadmin, PWD_MAXLEN, stdin);
        run_command(STTY, "echo", 0);
    }
    else {
        strncpy(ua1->myadmin, GETPARAM("global", "sqlpw"), PWD_MAXLEN);
    }

    cmd =
        (char *) malloc(strlen(MYSQL) + strlen(sqluser) +
                        strlen(ua1->myadmin) + strlen(sqlhost) + 25);

    sprintf(cmd, "%s -h %s --user=%s --password=%s", MYSQL, sqlhost,
            sqluser, ua1->myadmin);
    pr = popen(cmd, "w");

    return pr;
}

int closeSQL(FILE * fp)
{
    return pclose(fp);
}

int createSQLdb(struct lua_struct *ua1)
{
    FILE *pr = openSQL(ua1);
    char logbuf[256];

    sprintf(logbuf, "New mysql database: %s",
            ua1->current_account->user_name);
    genlog(LOG_NOTICE, logbuf);

    fprintf(pr, "CREATE DATABASE %s;\n", ua1->current_account->user_name);
    fprintf(pr, "USE %s;\n", ua1->current_account->user_name);
    fprintf(pr,
            "GRANT ALL PRIVILEGES ON * TO '%s'@'localhost' IDENTIFIED BY '%s';\n",
            ua1->current_account->user_name,
            ua1->current_account->password);
    fprintf(pr, "FLUSH PRIVILEGES;\n");

    return closeSQL(pr);
}

int deleteSQLdb(struct lua_struct *ua1)
{
    FILE *pr = openSQL(ua1);
    char logbuf[256];

    sprintf(logbuf, "Deleting database: %s",
            ua1->current_account->user_name);
    genlog(LOG_NOTICE, logbuf);

    fprintf(pr, "DROP DATABASE %s;\n", ua1->current_account->user_name);

    return closeSQL(pr);
}
