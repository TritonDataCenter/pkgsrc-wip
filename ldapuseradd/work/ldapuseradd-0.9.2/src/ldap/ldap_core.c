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

/*     This file is for core LDAP connection/initialization functions.
 */

#include "ldapuseradd.h"

LUA_DECLARE int lua_bind(LDAP * ld,
                         char const *uri,
                         ber_tag_t request, ber_int_t msgid, void *closure)
{
    struct lua_struct *ua1 = (struct lua_struct *) closure;
    char *who = GETPARAM("global", "ldapbinddn");
    return ldap_simple_bind_s(ld, who, ua1->admin);
}

LUA_DECLARE LDAP *lua_connect(struct lua_struct * ua1)
{
    LDAP *ld;
    int rc, ldap_version = 3;
    char logbuf[512];
    char *ldapuri = GETPARAM("global", "ldapuri");
    char *who = GETPARAM("global", "ldapbinddn");

    /* Get a handle to an LDAP connection. */
    ldap_initialize(&ld, ldapuri);
    if (ld == NULL) {
        die("ldap_initialize failed.");
    }

    /* Set the LDAP version */
    ldap_set_option(ld, LDAP_OPT_PROTOCOL_VERSION, &ldap_version);

    /* Print out an informational message. */
    sprintf(logbuf, "Binding to server %s as DN: %s", ldapuri, who);
    genlog(LOG_NOTICE, logbuf);

    /* Bind to the LDAP server. */
    rc = lua_bind(ld, 0, 0, 0, ua1);
    if (rc != LDAP_SUCCESS) {
        sprintf(logbuf, "ldap_simple_bind_s: %s", ldap_err2string(rc));
        die(logbuf);
    }
    genlog(LOG_INFO, "Bind operation successful.");

    rc = ldap_set_rebind_proc(ld, lua_bind, ua1);
    if (rc != LDAP_SUCCESS) {
        sprintf(logbuf, "ldap_set_rebind_proc: %s", ldap_err2string(rc));
        die(logbuf);
    }
    genlog(LOG_INFO, "Set rebind proc operation successful.");

    return ld;
}

LUA_DECLARE int lua_disconnect(LDAP * ld)
{
    ldap_unbind(ld);
    return TRUE;
}
