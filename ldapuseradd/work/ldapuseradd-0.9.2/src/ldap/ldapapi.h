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

/*     This header file describes all low-level LDAP source code.
 */

#ifndef _LDAP_SUB_H
#define _LDAP_SUB_H
#include <ldap.h>

//ldap_core.c
LUA_DECLARE LDAP *lua_connect(struct lua_struct *);
LUA_DECLARE int lua_disconnect(LDAP *);
LUA_DECLARE int lua_bind(LDAP *, char const *, ber_tag_t, ber_int_t,
                         void *);
//ldap_nss.c
LUA_DECLARE LDAPMessage *ldap_getpwuid(LDAP *, char *, int);
LUA_DECLARE LDAPMessage *ldap_getgrgid(LDAP *, char *, int);
LUA_DECLARE LDAPMessage *ldap_getpwnam(LDAP *, char *, char *);
LUA_DECLARE LDAPMessage *ldap_getgrnam(LDAP *, char *, char *);

//ldap_group.c
LUA_DECLARE int ldap_group_mod(struct lua_struct *, char *, char *);    //modify user entry
LUA_DECLARE int ldap_group_del(struct lua_struct *);    //delete user entry
LUA_DECLARE int ldap_group_add(struct lua_struct *);    //add user entry
LUA_DECLARE int ldap_group_users_list(LDAP *, char *, int, char ***,
                                      int *);
LUA_DECLARE int ldap_group_modify(struct lua_struct *, char *, char *,
                                  char *, int);
//ldap_user.c
LUA_DECLARE int ldap_user_mod(struct lua_struct *, char *, char *);     //modify user entry
LUA_DECLARE int ldap_user_del(struct lua_struct *);     //delete user entry
LUA_DECLARE int ldap_user_add(struct lua_struct *);     //add user entry
LUA_DECLARE int ldap_user_modify(struct lua_struct *, char *, char *,
                                 char *, int);
//ldap_groups.c
LUA_DECLARE int ldap_user_groups_list(LDAP *, char *, char *, char ***,
                                      int *);
LUA_DECLARE int ldap_user_groups_mod(struct lua_struct *, char *, char *);
LUA_DECLARE void groups_err(char *, char *);
#endif
