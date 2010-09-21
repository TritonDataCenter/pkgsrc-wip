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

/*     This implements: "chown -R user:group /path". Recursion is
 *     optional.
 */

#include "ldapuseradd.h"

//EXAMPLE: change_owner("/tmp/test", 0, 0, 1);
int change_owner(char *path, int user, int group, char recurse)
{
    DIR *fp;
    struct dirent *dent;
    char logbuf[256];

    if (recurse) {
        if (chdir(path) != 0) {
            sprintf(logbuf, "Could not chdir to %s", path);
            genlog(LOG_WARNING, logbuf);
            return 1;
        }

        fp = opendir(".");
        while ((dent = readdir(fp)) != NULL) {
            if (strcmp(dent->d_name, ".") != 0 &&
                strcmp(dent->d_name, "..") != 0) {
                if (chdir(dent->d_name) == 0) {
                    chdir("..");
                    change_owner(dent->d_name, user, group, recurse);
                }
                sprintf(logbuf, "Changing ownership: %s", dent->d_name);
                genlog(LOG_INFO, logbuf);
                chown(dent->d_name, user, group);
            }
        }
        closedir(fp);
    }
    
    sprintf(logbuf, "Changing ownership: %s", path);
    genlog(LOG_INFO, logbuf);

    return chown(path, user, group);
}
