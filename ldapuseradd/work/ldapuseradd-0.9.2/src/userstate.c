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

/*     This source is for functions related to user state.
 */

#include "ldapuseradd.h"

/**
 * user_del: Initiate all ldap routines required for ldapuserdel
 */
int user_del(struct lua_struct *ua1)
{
    int ret, i2;
    char **gmanage;
    char *manage = GETPARAM(ua1->cur_stanza, "manage"), logbuf[256];
    int nmanage = 0;

    gmanage = str_list(manage, ",", &nmanage);
    for (i2 = 0; i2 < nmanage; i2++) {
        char entrybuf[64], pathbuf[128];
        sprintf(logbuf, "managing: %s[%d]", gmanage[i2], i2);
        genlog(LOG_INFO, logbuf);
        sprintf(entrybuf, "hook_%s_del", gmanage[i2]);
        sprintf(pathbuf, "%s/hook_%s.so", LIB_DIR, gmanage[i2]);
        run_hook(entrybuf, pathbuf, ua1);
    }

    ret = ldap_user_del(ua1);
    if (!ret) {
        die("Could not delete LDAP user.");
    }
    else {
        genlog(LOG_NOTICE, "Deleted LDAP user");
    }

    /* Remove user from any secondary groups */
    ret = ret &&
        ldap_user_groups_mod(ua1, ua1->current_account->user_name, NULL);
    if (!ret) {
        groups_err(ua1->current_account->user_name, "null");
    }
    else {
        genlog(LOG_NOTICE, "Removed LDAP user from secondary groups");
    }

    return ret;
}

/**
 * user_add: Initiate all ldap routines required for ldapuseradd
 */
int user_add(struct lua_struct *ua1)
{
    int ret, i;
    char logbuf[64];
    char **gmanage;
    char *manage = GETPARAM(ua1->cur_stanza, "manage");
    int nmanage = 0;

    if (ua1->current_account->usr == LUA_UNSET)
        ua1->current_account->usr =
            find_free_uid(ua1->config, ua1->num_stanzas, ua1->ld,
                          GETPARAM("global", "ldapbasedn"));

    if (ua1->current_account->grp == LUA_UNSET) {
        char *gid = GETPARAM(ua1->cur_stanza, "group");

        if (isnumeric(gid)) {
            ua1->current_account->grp = atoi(gid);
        }
        else {
            ua1->current_account->grp = LUA_LATER;
            ua1->current_account->group_name = str_duplicate(gid);
        }
    }

    if (ua1->current_account->grp == LUA_LATER)
        ua1->current_account->grp =
            get_gid_group(ua1->ld, GETPARAM(ua1->cur_stanza, "ldapbasedn"),
                          ua1->current_account->group_name);

    if (ua1->current_account->home_dir == NULL)
        ua1->current_account->home_dir =
            str_duplicate(GETPARAM(ua1->cur_stanza, "home"));

    if (ua1->current_account->shell == NULL)
        ua1->current_account->shell =
            str_duplicate(GETPARAM(ua1->cur_stanza, "shell"));

    if (ua1->current_account->mail == NULL) {
        char *domain = str_duplicate(GETPARAM(ua1->cur_stanza, "domain"));
        ua1->current_account->mail =
            (char *) malloc(strlen(ua1->current_account->user_name) +
                            strlen(domain) + 2);
        sprintf(ua1->current_account->mail, "%s@%s",
                ua1->current_account->user_name, domain);
    }


    //TODO: account for -V not being specified
    ret = ldap_user_add(ua1);
    if (!ret) {
        die("Could not add LDAP user.");
    }
    else {
        genlog(LOG_NOTICE, "Created LDAP user");
    }

    if (ua1->current_account->sec_grps_set == TRUE) {
        ret =
            ldap_user_groups_mod(ua1, ua1->current_account->user_name,
                                 ua1->current_account->sec_grps);
        if (!ret) {
            groups_err(ua1->current_account->user_name,
                       ua1->current_account->sec_grps);
        }
        else {
            genlog(LOG_NOTICE, "Added LDAP user to secondary groups");
        }
    }

    gmanage = str_list(manage, ",", &nmanage);
    for (i = 0; i < nmanage; i++) {
        char entrybuf[64], pathbuf[128];
        sprintf(logbuf, "managing: %s[%d]", gmanage[i], i);
        genlog(LOG_INFO, logbuf);
        sprintf(entrybuf, "hook_%s_add", gmanage[i]);
        sprintf(pathbuf, "%s/hook_%s.so", LIB_DIR, gmanage[i]);
        run_hook(entrybuf, pathbuf, ua1);
    }

    return ret;
}

/**
 * user_mod: Initiate all ldap routines required for ldapusermod
 */
int user_mod(struct lua_struct *ua1)
{
    int ret = TRUE;

    if (ua1->newmod_account->firstname_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "givenName",
                             ua1->newmod_account->firstname);

    //TODO: "aliased" field names during modrdn
    if (ua1->newmod_account->surname_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "surname", ua1->newmod_account->surname);

    if (ua1->newmod_account->sec_grps_set == TRUE) {
        ret = ret &&
            ldap_user_groups_mod(ua1, ua1->current_account->user_name,
                                 ua1->newmod_account->sec_grps);
        if (!ret) {
            groups_err(ua1->current_account->user_name,
                       ua1->newmod_account->sec_grps);
        }
        else {
            genlog(LOG_NOTICE, "Added LDAP user to secondary groups");
        }
    }

    if (ua1->newmod_account->comment_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "gecos", ua1->newmod_account->comment);

    if (ua1->newmod_account->shadow_expire_set == TRUE)
        ret = ret && ldap_user_mod(ua1, "shadowExpire",
                                   ua1->newmod_account->shadow_expire);

    if (ua1->newmod_account->shadow_inactive_set == TRUE)
        ret = ret && ldap_user_mod(ua1, "shadowInactive",
                                   ua1->newmod_account->shadow_inactive);

    if (ua1->newmod_account->grp_set == TRUE) {
        if (ua1->newmod_account->grp == LUA_LATER) {
            ua1->newmod_account->grp =
                get_gid_group(ua1->ld,
                              GETPARAM(ua1->cur_stanza, "ldapbasedn"),
                              ua1->newmod_account->group_name);
        }

        ret = ret
            && ldap_user_mod(ua1, "gidNumber",
                             itoa(ua1->newmod_account->grp));
    }

    if (ua1->newmod_account->shell_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "loginShell",
                             ua1->newmod_account->shell);

    if (ua1->newmod_account->usr_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "uidNumber",
                             itoa(ua1->newmod_account->usr));

    if (ua1->newmod_account->home_dir_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "homeDirectory",
                             ua1->newmod_account->home_dir);

    if (ua1->newmod_account->mail_set == TRUE)
        ret = ret && ldap_user_mod(ua1, "mail", ua1->newmod_account->mail);

    if (ua1->newmod_account->password_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "userPassword",
                             ua1->newmod_account->password);

    if (ua1->newmod_account->shadow_last_change_set == TRUE)
        ret = ret && ldap_user_mod(ua1, "shadowLastChange",
                                   ua1->newmod_account->
                                   shadow_last_change);

    if (ua1->newmod_account->shadow_min_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "shadowMin",
                             ua1->newmod_account->shadow_min);

    if (ua1->newmod_account->shadow_max_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "shadowMax",
                             ua1->newmod_account->shadow_max);

    if (ua1->newmod_account->shadow_warn_set == TRUE)
        ret = ret && ldap_user_mod(ua1, "shadowWarning",
                                   ua1->newmod_account->shadow_warn);

    if (ua1->newmod_account->shadow_flag_set == TRUE)
        ret = ret
            && ldap_user_mod(ua1, "shadowFlag",
                             ua1->newmod_account->shadow_flag);

    if (ua1->newmod_account->user_name_set == TRUE) {
        int i2;
        char **grouplist_cur;
        int ngroups_cur = 0;

        ret = ret
            && ldap_user_groups_list(ua1->ld,
                                     GETPARAM("global", "ldapbasedn"),
                                     ua1->current_account->user_name,
                                     &grouplist_cur, &ngroups_cur);

        for (i2 = 0; i2 < ngroups_cur; i2++) {
            ret = ret
                && ldap_group_modify(ua1, "memberUid",
                                     ua1->current_account->user_name,
                                     grouplist_cur[i2], LDAP_MOD_DELETE);
            ret = ret
                && ldap_group_modify(ua1, "memberUid",
                                     ua1->newmod_account->user_name,
                                     grouplist_cur[i2], LDAP_MOD_ADD);
        }

        ret = ret
            && ldap_user_mod(ua1, "uid", ua1->newmod_account->user_name);
    }

    if (!ret) {
        die("Could not modify LDAP user.");
    }
    else {
        genlog(LOG_NOTICE, "Modified LDAP user.");
    }

    return ret;
}

/**
 * group_del: Initiate all ldap routines required for ldapgroupdel
 */
int group_del(struct lua_struct *ua1)
{
    int ret;

    ret = ldap_group_del(ua1);
    if (!ret) {
        die("Could not delete LDAP group.");
    }
    else {
        genlog(LOG_NOTICE, "Deleted LDAP group");
    }

    return ret;
}

/**
 * group_add: Initiate all ldap routines required for ldapgroupadd
 */
int group_add(struct lua_struct *ua1)
{
    int ret;

    if (ua1->current_account->grp == LUA_UNSET)
        ua1->current_account->grp =
            find_free_gid(ua1->config, ua1->num_stanzas, ua1->ld,
                          GETPARAM("global", "ldapbasedn"));

    ret = ldap_group_add(ua1);
    if (!ret) {
        die("Could not add LDAP group.");
    }
    else {
        genlog(LOG_NOTICE, "Created LDAP group");
    }

    return ret;
}

/**
 * group_mod: Initiate all ldap routines required for ldapgroupmod
 */
int group_mod(struct lua_struct *ua1)
{
    int ret = TRUE;

    if (ua1->newmod_account->grp_set == TRUE) {
        char **grouplist_mod;
        int ngroups_mod = 0, i;
        ret = ret
            && ldap_group_users_list(ua1->ld,
                                     GETPARAM("global", "ldapbasedn"),
                                     ua1->current_account->grp,
                                     &grouplist_mod, &ngroups_mod);
        ret = ret
            && ldap_group_mod(ua1, "gidNumber",
                              itoa(ua1->newmod_account->grp));

        for (i = 0; i < ngroups_mod; i++) {
            ret = ret
                && ldap_user_modify(ua1, "gidNumber",
                                    itoa(ua1->newmod_account->grp),
                                    grouplist_mod[i], LDAP_MOD_REPLACE);
        }
    }

    if (ua1->newmod_account->group_name_set == TRUE)
        ret = ret
            && ldap_group_mod(ua1, "cn", ua1->newmod_account->group_name);

    if (!ret) {
        die("Could not modify LDAP group.");
    }
    else {
        genlog(LOG_NOTICE, "Modified LDAP group");
    }

    return ret;
}

/**
 * check_new_user: Checks if a uid is available. If so, returns TRUE. Otherwise,
 * populates the ua1->user_struct and ua1->current_account structures.
 */
LUA_DECLARE int check_new_user(struct lua_struct *ua1)
{
    if (ua1->current_account->user_name != NULL) {
        ua1->user_struct =
            ldap_getpwnam(ua1->ld, GETPARAM("global", "ldapbasedn"),
                          ua1->current_account->user_name);
        if (ua1->user_struct == NULL) {
            return TRUE;
        }
        else {
            char **vals;

            LDAP_GET_USR_VALUE_INT("uidNumber", ua1->current_account->usr);
            LDAP_GET_USR_VALUE_INT("gidNumber", ua1->current_account->grp);
            LDAP_GET_USR_VALUE_STRING("homeDirectory",
                                      ua1->current_account->home_dir);
            LDAP_GET_USR_VALUE_STRING("gecos",
                                      ua1->current_account->comment);
            LDAP_GET_USR_VALUE_STRING("mail", ua1->current_account->mail);
            LDAP_GET_USR_VALUE_STRING("shadowExpire",
                                      ua1->current_account->shadow_expire);
            LDAP_GET_USR_VALUE_STRING("shadowInactive",
                                      ua1->current_account->
                                      shadow_inactive);
            LDAP_GET_USR_VALUE_STRING("loginShell",
                                      ua1->current_account->shell);
            LDAP_GET_USR_VALUE_STRING("givenName",
                                      ua1->current_account->firstname);
            LDAP_GET_USR_VALUE_STRING("sn", ua1->current_account->surname);
            LDAP_GET_USR_VALUE_STRING("userPassword",
                                      ua1->current_account->password);
            LDAP_GET_USR_VALUE_STRING("shadowLastChange",
                                      ua1->current_account->
                                      shadow_last_change);
            LDAP_GET_USR_VALUE_STRING("shadowMin",
                                      ua1->current_account->shadow_min);
            LDAP_GET_USR_VALUE_STRING("shadowMax",
                                      ua1->current_account->shadow_max);
            LDAP_GET_USR_VALUE_STRING("shadowWarning",
                                      ua1->current_account->shadow_warn);
            LDAP_GET_USR_VALUE_STRING("shadowFlag",
                                      ua1->current_account->shadow_flag);

            return FALSE;
        }
    }
    else {
        return TRUE;
    }
}

/**
 * check_new_group: Returns true if we can create a new group. Otherwise,
 * populates the ua1->group_struct and ua1->current_account structures.
 */
LUA_DECLARE int check_new_group(struct lua_struct *ua1)
{
    if (ua1->current_account->group_name != NULL) {
        ua1->group_struct =
            ldap_getgrnam(ua1->ld, GETPARAM("global", "ldapbasedn"),
                          ua1->current_account->group_name);
        if (ua1->group_struct == NULL) {
            return TRUE;
        }
        else {
            char **vals;

            LDAP_GET_GRP_VALUE_INT("gidNumber", ua1->current_account->grp);

            return FALSE;
        }
    }
    else {
        return TRUE;
    }
}

/**
 * find_free_uid: Returns an integer of the next available uid number. Needs
 * to be re-written for better efficiency.
 */
LUA_DECLARE int find_free_uid(struct stanza_config **conf, int count,
                              LDAP * ld, char *basedn)
{
    int nuid, euid, i;
    char buffer[256], *end, logbuf[32];

    if (get_param(conf, count, buffer, 256, "global", "uidset") == NULL)
        return LUA_UNSET;

    end = strchr(buffer, '-');
    if (end == NULL)
        return LUA_UNSET;

    end[0] = 0;
    nuid = atoi(buffer);
    euid = atoi(&end[1]);
    //TODO: looping through LDAP queries won't scale well
    for (i = nuid; i < euid; i++) {
        if (ldap_getpwuid(ld, basedn, i) == NULL) {
            sprintf(logbuf, "Selected UID: %d", i);
            genlog(LOG_NOTICE, logbuf);
            return i;
        }
    }

    return LUA_UNSET;
}

/**
 * find_free_gid: Returns an integer of the next available gid number. Needs
 * to be re-written for better efficiency.
 */
LUA_DECLARE int find_free_gid(struct stanza_config **conf, int count,
                              LDAP * ld, char *basedn)
{
    int nuid, euid, i;
    char buffer[256], *end, logbuf[32];

    if (get_param(conf, count, buffer, 256, "global", "gidset") == NULL)
        return LUA_UNSET;

    end = strchr(buffer, '-');
    if (end == NULL)
        return LUA_UNSET;

    end[0] = 0;
    nuid = atoi(buffer);
    euid = atoi(&end[1]);
    for (i = nuid; i < euid; i++) {
        if (ldap_getgrgid(ld, basedn, i) == NULL) {
            sprintf(logbuf, "Selected GID: %d", i);
            genlog(LOG_NOTICE, logbuf);
            return i;
        }
    }

    return LUA_UNSET;
}

LUA_DECLARE char *get_group_gid(LDAP * ld, char *basedn, int i)
{
    char *retval = NULL;
    LDAPMessage *msg;

    if ((msg = ldap_getgrgid(ld, basedn, i)) != NULL) {
        char **vals;
        vals = ldap_get_values(ld, msg, "cn");
        if (vals != NULL && vals[0] != NULL)
            retval = str_duplicate(vals[0]);
    }

    return retval;
}

LUA_DECLARE int get_gid_group(LDAP * ld, char *basedn, char *group)
{
    int retval = LUA_UNSET;
    LDAPMessage *msg;

    if ((msg = ldap_getgrnam(ld, basedn, group)) != NULL) {
        char **vals;
        vals = ldap_get_values(ld, msg, "gidNumber");
        if (vals != NULL && vals[0] != NULL)
            retval = atoi(vals[0]);
    }

    return retval;
}

