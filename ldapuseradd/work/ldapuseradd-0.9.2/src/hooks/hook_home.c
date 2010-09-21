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
 * hook_home.c - Create homedir referenced by "home" config item.
 * 
 * @author Greg Schenzel
 */

/**
 * useradd entry point
 */
int hook_home_add(struct lua_struct *ua1)
{
    char *chome = ua1->current_account->home_dir;
    int ret;

    if (chome == NULL)
        chome = GETPARAM(ua1->cur_stanza, "home");

    if (strcmp(chome, "") != 0) {
        ret = dir_make(chome, S_IRWXU, TRUE, ua1);
        if (!ret) {
            genlog(LOG_WARNING, "Could not create homespace.");
        }
        else {
            genlog(LOG_INFO, "Created home directory");
        }
    }
}

/**
 * userdel entry point
 */
int hook_home_del(struct lua_struct *ua1)
{
    int ret;
    if (ua1->purge_home) {
        ret = dir_delete(ua1->current_account->home_dir, TRUE);
        if (!ret) {
            genlog(LOG_WARNING, "Could not delete home");
        }
        else {
            genlog(LOG_INFO, "Deleted home directory");
        }
    }
}
