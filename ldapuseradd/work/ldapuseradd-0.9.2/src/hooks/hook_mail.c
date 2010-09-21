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
 * TODO: Tweak and stress test hook_mail.
 */

int hook_mail_add(struct lua_struct *ua1)
{
    char **nmaill;
    int nnmaill;
    int i2;
    int ret;
    char logbuf[256];

    nmaill =
        str_list(GETPARAM(ua1->cur_stanza, "maillink"), ",", &nnmaill);
    for (i2 = 0; i2 < nnmaill; i2++) {
        ret = symlink(GETPARAM(ua1->cur_stanza, "mail"), nmaill[i2]);
        if (ret != 0) {
            genlog(LOG_WARNING, "Could not create mail link.");
        }
        else {
            sprintf(logbuf, "Created mail link %s", nmaill[i2]);
            genlog(LOG_INFO, logbuf);
        }
    }
}


int hook_mail_del(struct lua_struct *ua1)
{
    int ret;
    char **omaill;
    char *omaillink;
    int nomaill;
    int i;
    char logbuf[256];

    if (strcmp(GETPARAM(ua1->cur_stanza, "mail"), "") != 0) {
        ret = dir_delete(GETPARAM(ua1->cur_stanza, "mail"), TRUE);
        if (!ret) {
            genlog(LOG_WARNING, "Could not delete maildir");
        }
        else {
            genlog(LOG_NOTICE, "Deleted mail");
        }
    }

    omaill = str_list(omaillink, ",", &nomaill);
    for (i = 0; i < nomaill; i++) {
        ret = unlink(omaill[i]);
        if (ret != 0) {
            sprintf(logbuf, "Could not delete old maildir link %s",
                    omaill[i]);
            genlog(LOG_WARNING, logbuf);
        }
        else {
            sprintf(logbuf, "Deleted old maildir link %s", omaill[i]);
            genlog(LOG_INFO, logbuf);
        }
    }
}
