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

/*
 * LDAP Naming Service Related Functions
 */

#include "ldapuseradd.h"
#include <ctype.h>

LUA_DECLARE LDAPMessage *ldap_getpwuid(LDAP * ld, char *base, int uid)
{
    int ret, rc;
    LDAPMessage *res;
    char filter[128];

    sprintf(filter, "(&(uidNumber=%d)(objectClass=posixAccount))", uid);

    ret = ldap_search(ld, base, LDAP_SCOPE_SUBTREE, filter, NULL, 0);

    if ((rc =
         ldap_result(ld, ret, 0, NULL, &res)) == LDAP_RES_SEARCH_ENTRY) {
        return ldap_first_entry(ld, res);
    }

    return NULL;
}

LUA_DECLARE LDAPMessage *ldap_getgrgid(LDAP * ld, char *base, int gid)
{
    int ret, rc;
    LDAPMessage *res;
    char filter[128];

    sprintf(filter, "(&(gidNumber=%d)(objectClass=posixGroup))", gid);

    ret = ldap_search(ld, base, LDAP_SCOPE_SUBTREE, filter, NULL, 0);

    if ((rc =
         ldap_result(ld, ret, 0, NULL, &res)) == LDAP_RES_SEARCH_ENTRY) {
        return ldap_first_entry(ld, res);
    }

    return NULL;
}

LUA_DECLARE LDAPMessage *ldap_getgrnam(LDAP * ld, char *base, char *group)
{
    int ret, rc;
    LDAPMessage *res;
    char filter[128];

    sprintf(filter, "(&(cn=%s)(objectClass=posixGroup))", group);

    ret = ldap_search(ld, base, LDAP_SCOPE_SUBTREE, filter, NULL, 0);

    if ((rc =
         ldap_result(ld, ret, 0, NULL, &res)) == LDAP_RES_SEARCH_ENTRY) {
        return ldap_first_entry(ld, res);
    }

    return NULL;
}

LUA_DECLARE LDAPMessage *ldap_getpwnam(LDAP * ld, char *base, char *user)
{
    int ret, rc;
    LDAPMessage *res;
    char filter[128];

    sprintf(filter, "(&(uid=%s)(objectClass=posixAccount))", user);

    ret = ldap_search(ld, base, LDAP_SCOPE_SUBTREE, filter, NULL, 0);

    if ((rc =
         ldap_result(ld, ret, 0, NULL, &res)) == LDAP_RES_SEARCH_ENTRY) {
        return ldap_first_entry(ld, res);
    }

    return NULL;
}
