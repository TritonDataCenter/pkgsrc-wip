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

/*     This is the account structure definition header
 */

#ifndef _ACCOUNT_H
#define _ACCOUNT_H

#define PWD_MAXLEN 32

struct stanza_config {
    char *section;
    int num;
    char **keys;
    char **values;
};

struct user_account {
    //Account Values
    int grp;
    int usr;
    char *group_name;
    char *user_name;
    char *password;
    char *firstname;
    char *surname;
    char *comment;
    char *home_dir;
    char *sec_grps;
    char *shell;
    char *shadow_expire;
    char *shadow_inactive;
    char *shadow_last_change;
    char *shadow_min;
    char *shadow_max;
    char *shadow_warn;
    char *shadow_flag;
    char *mail;

    //Passed Arguments
    int grp_set;
    int usr_set;
    int group_name_set;
    int user_name_set;
    int password_set;
    int firstname_set;
    int surname_set;
    int comment_set;
    int home_dir_set;
    int sec_grps_set;
    int shell_set;
    int shadow_expire_set;
    int shadow_inactive_set;
    int shadow_last_change_set;
    int shadow_min_set;
    int shadow_max_set;
    int shadow_warn_set;
    int shadow_flag_set;
    int mail_set;

    node *var_top;
};

struct lua_struct {
    //LDAP Structures
    LDAP *ld;
    LDAPMessage *group_struct;
    LDAPMessage *user_struct;

    //Used by hook_home.so if -r is passed to ldapuserdel
    int purge_home;

    //LDAP Password
    char admin[PWD_MAXLEN];
    //MySQL Password (used by hook_sql)
    char myadmin[PWD_MAXLEN];

    //Configuration Pointers
    char *cur_stanza;
    int cur_stanza_set;
    struct stanza_config **config;
    int num_stanzas, action;

    //Skeleton home dir... Used by hook_home.so during ldapuseradd
    char *skel;
    int skel_set;

    struct user_account *current_account;
    struct user_account *newmod_account;
};

#define set_defaults(act) { \
    ua1->action = act;\
    ua1->current_account->grp = LUA_UNSET;\
    ua1->current_account->usr = LUA_UNSET;\
    ua1->purge_home = FALSE;\
    ua1->current_account->user_name = NULL;\
    ua1->current_account->group_name = NULL;\
    ua1->current_account->password = "";\
    ua1->current_account->firstname = "";\
    ua1->current_account->surname = "";\
    ua1->current_account->comment = "";\
    ua1->current_account->home_dir = NULL;\
    ua1->current_account->sec_grps = NULL;\
    ua1->skel = "/etc/skel";\
    ua1->current_account->shell = NULL;\
    ua1->current_account->shadow_expire = "";\
    ua1->current_account->shadow_inactive = "";\
    ua1->current_account->shadow_last_change = "";\
    ua1->current_account->shadow_min = "";\
    ua1->current_account->shadow_max = "";\
    ua1->current_account->shadow_warn = "";\
    ua1->current_account->shadow_flag = "";\
    ua1->current_account->mail = NULL;\
    ua1->cur_stanza = GETPARAM("global", "default");	\
    ua1->cur_stanza_set = FALSE;\
    ua1->current_account->grp_set = FALSE;\
    ua1->current_account->usr_set = FALSE;\
    ua1->current_account->group_name_set = FALSE;\
    ua1->current_account->user_name_set = FALSE;\
    ua1->current_account->firstname_set = FALSE;\
    ua1->current_account->surname_set = FALSE;\
    ua1->current_account->comment_set = FALSE;\
    ua1->current_account->home_dir_set = FALSE;\
    ua1->current_account->sec_grps_set = FALSE;\
    ua1->current_account->shell_set = FALSE;\
    ua1->current_account->shadow_expire_set = FALSE;\
    ua1->current_account->shadow_inactive_set = FALSE;\
    ua1->current_account->shadow_last_change_set = FALSE;\
    ua1->current_account->shadow_min_set = FALSE;\
    ua1->current_account->shadow_max_set = FALSE;\
    ua1->current_account->shadow_warn_set = FALSE;\
    ua1->current_account->shadow_flag_set = FALSE;\
    ua1->current_account->password_set = FALSE;\
    ua1->current_account->var_top = NULL;\
    ua1->skel_set = FALSE;\
    ua1->ld = NULL;\
    ua1->group_struct = NULL;\
    ua1->user_struct = NULL;\
    ua1->current_account->mail_set = FALSE;\
}

#endif
