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

#ifndef _USERSTATE_H
#define _USERSTATE_H

#include <stdio.h>
#include <stdarg.h>
#include <sys/types.h>
#include <dirent.h>
#include <signal.h>
#include <errno.h>

#ifndef HOOK_COMPILE
//userstate.c
int user_del(struct lua_struct *);
int user_add(struct lua_struct *);
int user_mod(struct lua_struct *);
int group_del(struct lua_struct *);
int group_add(struct lua_struct *);
int group_mod(struct lua_struct *);
int check_new_user(struct lua_struct *);        //return TRUE if user does NOT exist
int check_new_group(struct lua_struct *);
int find_free_uid(struct stanza_config **, int, LDAP *, char *);        //find unused uidNumber
int find_free_gid(struct stanza_config **, int, LDAP *, char *);        //find unused gidNumber
char *get_group_gid(LDAP *, char *, int);
int get_gid_group(LDAP *, char *, char *);

/* The following macros require an empty "char **vals;" and a user or group
   response from LDAP. */
#define LDAP_GET_USR_VALUE_STRING(field, var) {\
    vals = ldap_get_values(ua1->ld, ua1->user_struct, field);\
    if (vals != NULL && vals[0] != NULL && vals[1] == NULL)\
        var = vals[0];\
}

#define LDAP_GET_USR_VALUE_INT(field, var) {\
    vals = ldap_get_values(ua1->ld, ua1->user_struct, field);\
    if (vals != NULL && vals[0] != NULL && vals[1] == NULL)\
        var = atoi(vals[0]);\
}

#define LDAP_GET_GRP_VALUE_STRING(field, var) {\
    vals = ldap_get_values(ua1->ld, ua1->group_struct, field);\
    if (vals != NULL && vals[0] != NULL && vals[1] == NULL)\
        var = vals[0];\
}

#define LDAP_GET_GRP_VALUE_INT(field, var) {\
    vals = ldap_get_values(ua1->ld, ua1->group_struct, field);\
    if (vals != NULL && vals[0] != NULL && vals[1] == NULL)\
        var = atoi(vals[0]);\
}

#endif

#endif
