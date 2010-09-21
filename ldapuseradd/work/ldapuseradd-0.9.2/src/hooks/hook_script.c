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
 * hook_script.c - Run a script at user creation or deletion
 * 
 * @author Greg Schenzel
 */

int hook_script_add(struct lua_struct *ua1)
{
    int ret;
    char logbuf[256];
    char *script = GETPARAM(ua1->cur_stanza, "scriptadd");

    if (strcmp(script, "") == 0) {
        sprintf(logbuf, "\"script\" is included in the \"manage\" list, but \"scriptadd\" is not defined.");
        genlog(LOG_NOTICE, logbuf);
        return;
    }

    ret = system(script);

    if (ret != 0) {
        sprintf(logbuf, "\"%s\" returned %d", script, ret);
        genlog(LOG_NOTICE, logbuf);
        return;
    }
}

int hook_script_del(struct lua_struct *ua1)
{
    int ret;
    char logbuf[256];
    char *script = GETPARAM(ua1->cur_stanza, "scriptdel");

    if (strcmp(script, "") == 0) {
        sprintf(logbuf, "\"script\" is included in the \"manage\" list, but \"scriptdel\" is not defined.");
        genlog(LOG_NOTICE, logbuf);
        return;
    }

    ret = system(script);

    if (ret != 0) {
        sprintf(logbuf, "\"%s\" returned %d", script, ret);
        genlog(LOG_NOTICE, logbuf);
        return;
    }
}

