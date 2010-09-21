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

/*     This implements: "mkdir /path" or "cp -r /etc/skel /path".
 */

#include "ldapuseradd.h"

LUA_DECLARE int dir_exists(char *dir)
{
    //    DIR *p;
    //    puts(dir);
    struct stat buffer;
    int status;
    if ((status = stat(dir, &buffer)) == -1) {
        //    if ((p = opendir(dir)) == NULL) {
        //  closedir(p);
        //if (errno == ENOENT)
        return FALSE;
    }
    return TRUE;
}

LUA_DECLARE int dir_make(char *dir, mode_t mode, int copy_skel,
                         struct lua_struct *ua1)
{
    int stat = dir_exists(dir);
    int usr, grp;
    char logbuf[256];

    if (ua1 == NULL) {
        usr = 0;
        grp = 0;
    }
    else {
        usr = ua1->current_account->usr;
        grp = ua1->current_account->grp;
    }

    if (!stat) {
        sprintf(logbuf, "Creating directory: %s", dir);
        genlog(LOG_NOTICE, logbuf);
        if (copy_skel) {
            run_command(CP, "-r", ua1->skel, dir, 0);
            change_owner(dir, usr, grp, TRUE);
            change_perms(dir, mode, TRUE);
        }
        else {
            mkdir(dir, mode);
            change_owner(dir, usr, grp, FALSE);
            change_perms(dir, mode, FALSE);
        }
    }
    else {
        sprintf(logbuf, "Directory already exists, not creating.");
        genlog(LOG_WARNING, logbuf);
        return FALSE;
    }
    return TRUE;
}
