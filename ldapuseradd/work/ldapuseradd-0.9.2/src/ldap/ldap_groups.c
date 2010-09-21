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

#include "ldapuseradd.h"

/**
 * groups_err: Die with a preformatted secondary group error.
 */
LUA_DECLARE void groups_err(char *user_name, char *sec_grps)
{
    char *secgrpmsg =
        "Could not modify %s with the following secondary groups: %s\n";
    char msgbuf[strlen(secgrpmsg) +
                strlen(user_name) + strlen(sec_grps) + 1];
    sprintf(msgbuf, secgrpmsg, user_name, sec_grps);
    die(msgbuf);
}

/**
 * ldap_user_groups_list: Create an array with all secondary groups that a user
 * belongs to.
 */
LUA_DECLARE int ldap_user_groups_list(LDAP * ld, char *base, char *user,
                                      char ***usergroups, int *nusergroups)
{
    int rc, ret = TRUE;
    LDAPMessage *res, *e;
    char filter[128];
    char **vals;

    nusergroups[0] = 0;
    usergroups[0] = malloc(sizeof(char *));
    if (usergroups[0] == NULL)
        die("Unable to allocate memory");

    if (strcmp(user, "*") == 0) {
        sprintf(filter, "(objectClass=posixGroup)");
    }
    else {
        sprintf(filter, "(&(memberUid=%s)(objectClass=posixGroup))", user);
    }

    ret = ldap_search(ld, base, LDAP_SCOPE_SUBTREE, filter, NULL, 0);

    while ((rc =
            ldap_result(ld, ret, 0, NULL,
                        &res)) == LDAP_RES_SEARCH_ENTRY) {
        for (e = ldap_first_entry(ld, res); e != NULL;
             e = ldap_next_entry(ld, e)) {
            vals = ldap_get_values(ld, e, "cn");
            if (ldap_count_values(vals) == 0) {
                return TRUE;    //User has no secondary memberships
            }
            else if (vals != NULL && vals[0] != NULL) {
                char *spbuf = "ldap_user_groups_list";
                char logbuf[strlen(spbuf) + strlen(vals[0]) + 3];
                sprintf(logbuf, "%s: %s", spbuf, vals[0]);
                genlog(LOG_INFO, logbuf);
                usergroups[0][nusergroups[0]] = str_duplicate(vals[0]);
                nusergroups[0]++;
                usergroups[0] =
                    realloc(usergroups[0],
                            sizeof(char *) * (nusergroups[0] + 1));
                if (usergroups[0] == NULL)
                    die("Unable to allocate memory");
            }
            else {
                return FALSE;
            }
        }
    }

    return TRUE;
}

/**
 * ldap_user_groups_mod: Update a user's secondary group membership.
 */
LUA_DECLARE int ldap_user_groups_mod(struct lua_struct *ua1, char *user,
                                     char *groups)
{
    int i2, i, ret = TRUE;
    char **grouplist_mod = NULL;
    int ngroups_mod = 0;
    char **grouplist_cur = NULL;
    int ngroups_cur = 0;
    char logbuf[500];

    ret = ret
        && ldap_user_groups_list(ua1->ld, GETPARAM("global", "ldapbasedn"),
                                 user, &grouplist_cur, &ngroups_cur);

    if (groups != NULL)
        grouplist_mod = str_list(groups, ",", &ngroups_mod);

    for (i = 0; i < ngroups_cur; i++) {
        int found_group_in_mod = FALSE;

        if (groups != NULL) {
            for (i2 = 0; i2 < ngroups_mod; i2++) {
                if (strcmp(grouplist_cur[i], grouplist_mod[i2]) == 0) {
                    found_group_in_mod = TRUE;
                }
                else if (isnumeric(grouplist_mod[i2])) {
                    grouplist_mod[i2] =
                        get_group_gid(ua1->ld,
                                      GETPARAM("global", "ldapbasedn"),
                                      atoi(grouplist_mod[i2]));
                    if (strcmp(grouplist_cur[i], grouplist_mod[i2]) == 0)
                        found_group_in_mod = TRUE;
                }
            }

            if (!found_group_in_mod) {
                //remove user from group
                sprintf(logbuf, "Deleting User from Group: %s",
                        grouplist_cur[i]);
                genlog(LOG_NOTICE, logbuf);

                ret = ret
                    && ldap_group_modify(ua1, "memberUid", user,
                                         grouplist_cur[i],
                                         LDAP_MOD_DELETE);
            }
        }
        else {
            //user is being stripped
            sprintf(logbuf, "Deleting User from Group: %s",
                    grouplist_cur[i]);
            genlog(LOG_NOTICE, logbuf);

            //TODO: sometimes getting memberUid corruption here!
            ret = ret
                && ldap_group_modify(ua1, "memberUid", user,
                                     grouplist_cur[i], LDAP_MOD_DELETE);
        }
    }

    if (groups != NULL) {
        for (i = 0; i < ngroups_mod; i++) {
            int found_group_in_cur = FALSE;

            for (i2 = 0; i2 < ngroups_cur; i2++) {
                if (strcmp(grouplist_mod[i], grouplist_cur[i2]) == 0) {
                    found_group_in_cur = TRUE;
                }
            }

            if (!found_group_in_cur) {
                //add user to group
                sprintf(logbuf, "Adding User to Group: %s",
                        grouplist_mod[i]);
                genlog(LOG_NOTICE, logbuf);

                ret = ret
                    && ldap_group_modify(ua1, "memberUid", user,
                                         grouplist_mod[i], LDAP_MOD_ADD);
            }
        }
    }

    free(grouplist_mod);
    free(grouplist_cur);

    return ret;
}
