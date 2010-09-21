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

LUA_DECLARE int ldap_user_add(struct lua_struct *ua1)
{
    LDAPMod **mods;
    FILE *schema_template;
    char *gid_number = itoa(ua1->current_account->grp);
    char *uid_number = itoa(ua1->current_account->usr);
#define var_top ua1->current_account->var_top
    int lines = 0;
    int i;
    int cur_mod = 0, cur_line = 0;
    int rc;
    char logbuf[512], tmpl[512], *filename;
    /** Decide on a DN */
    char *dnbuf = GETPARAM("global", "ldapuserdn");
    char *replace_strings[][2] = {
        {ua1->current_account->user_name, "%(uid)"},
        {ua1->current_account->password, "%(password)"},
        {ua1->current_account->firstname, "%(first_name)"},
        {ua1->current_account->surname, "%(last_name)"},
        {gid_number, "%(gid_number)"},
        {uid_number, "%(uid_number)"},
        {ua1->current_account->comment, "%(gecos)"},
        {ua1->current_account->home_dir, "%(home_dir)"},
        {ua1->current_account->mail, "%(mail)"},
        {ua1->current_account->shadow_expire, "%(shadow_expire)"},
        {ua1->current_account->shadow_inactive, "%(shadow_inactive)"},
        {ua1->current_account->shell, "%(shell)"},
        {ua1->current_account->shadow_last_change,
         "%(shadow_last_change)"},
        {ua1->current_account->shadow_min, "%(shadow_min)"},
        {ua1->current_account->shadow_max, "%(shadow_max)"},
        {ua1->current_account->shadow_warn, "%(shadow_warn)"},
        {ua1->current_account->shadow_flag, "%(shadow_flag)"},
        {NULL, NULL}
    };

    for (i = 0;; i++) {
        char **record = replace_strings[i];
        if (record[0] == NULL)
            break;
        else
            var_top = push_stack(var_top, record);
    }

    sprintf(logbuf, "Creating LDAP User: %s",
            ua1->current_account->user_name);
    genlog(LOG_NOTICE, logbuf);

    genlog(LOG_INFO, "Looking for template");
    filename = GETPARAM(ua1->cur_stanza, "user_template");
    sprintf(tmpl, "%s/%s", CONFIG_DIR, filename);
    lines = count_lines(tmpl);

    genlog(LOG_INFO, "Opening template");
    schema_template = fopen(tmpl, "r");
    if (schema_template == NULL) {
        sprintf(logbuf, "Could not open %s", tmpl);
        die(logbuf);
    }

    genlog(LOG_INFO, "Creating LDAP structures");
    mods = (LDAPMod **) malloc((lines + 1) * sizeof(LDAPMod *));
    if (mods == NULL) {
        die("Cannot allocate memory for mods array");
    }

    while (!feof(schema_template)) {
        int line_len = 500;
        char line[line_len];
        char *field_sep, *line_buf, *val;
        node *this_node;
        cur_line++;

        sprintf(logbuf, "Reading template line %d", cur_line);
        genlog(LOG_INFO, logbuf);
        if (fgets(line, line_len, schema_template) == NULL)
            break;
        if (line[strlen(line) - 1] == '\n')
            line[strlen(line) - 1] = 0;
        if (var_top != NULL) {
            for (this_node = var_top; this_node != NULL;
                 this_node = this_node->next) {
                char **record = this_node->item;
                if (strstr(line, record[1]) != NULL) {
                    char *tmpline;
                    tmpline = str_replace(line, record[1], record[0]);
                    strcpy(line, tmpline);
                }
            }
        }

        sprintf(logbuf, "Parsing template line %d", cur_line);
        genlog(LOG_INFO, logbuf);
        line_buf = str_duplicate(line);
        //TODO: field_sep logic needs reconstruct
        field_sep = strstr(line_buf, ": ");
        if (field_sep == NULL) {
            sprintf(logbuf,
                    "Malformed line in user template file. Key and value must\n   be seperated by a colon and a single space (e.g. \": \")\n   Line follows: %s",
                    line_buf);
            genlog(LOG_WARNING, logbuf);
            continue;
        }
        field_sep[0] = 0;
        val = &field_sep[2];
        if (isempty(val)) {
            sprintf(logbuf, "Skipping %s due to empty value", line_buf);
            genlog(LOG_INFO, logbuf);
            continue;
        }

        sprintf(logbuf, "Creating LDAP structure for line %d", cur_line);
        if ((mods[cur_mod] = (LDAPMod *) malloc(sizeof(LDAPMod))) == NULL) {
            die("Cannot allocate memory for mods element");
        }

        sprintf(logbuf, "Populating LDAP structure for line %d", cur_line);
        genlog(LOG_INFO, logbuf);
        mods[cur_mod]->mod_op = 0;
        mods[cur_mod]->mod_type = str_duplicate(line_buf);
        mods[cur_mod]->mod_values = str_array(val);

        sprintf(logbuf, "%s: %s", mods[cur_mod]->mod_type,
                mods[cur_mod]->mod_values[0]);
        genlog(LOG_INFO, logbuf);

        cur_mod++;
    }
    mods[cur_mod] = NULL;

    genlog(LOG_INFO, "Adding the record in LDAP");

    /* Perform the add operation. */
    rc = ldap_add_ext_s(ua1->ld, dnbuf, mods, NULL, NULL);
    if (rc != LDAP_SUCCESS) {
        sprintf(logbuf, "ldap_add_ext_s: %s", ldap_err2string(rc));
        genlog(LOG_WARNING, logbuf);
        return FALSE;
    }
    else {
        sprintf(logbuf, "%s added successfully.", dnbuf);
        genlog(LOG_NOTICE, logbuf);
    }

    return TRUE;
}

LUA_DECLARE int ldap_user_modify(struct lua_struct *ua1, char *key,
                                 char *value, char *user_name,
                                 int operation)
{
    char logbuf[512];
    LDAPMessage *e;
    LDAPMod mod;
    LDAPMod *mods[2];
    mod.mod_op = operation;
    mod.mod_type = str_duplicate(key);
    mod.mod_values = str_array(value);
    mods[0] = &mod;
    mods[1] = NULL;

    sprintf(logbuf, "Modifying LDAP User: %s (%s: %s)", user_name, key,
            value);
    genlog(LOG_NOTICE, logbuf);

    e = ldap_getpwnam(ua1->ld, GETPARAM("global", "ldapbasedn"),
                      user_name);
    if (e != NULL) {
        char *dn;
        dn = ldap_get_dn(ua1->ld, e);
        if (operation == LDAP_MOD_REPLACE) {
            char rdn[strlen(key) + 2];
            sprintf(rdn, "%s=", key);
            if (strcasestr(dn, rdn) == dn) {
                char newrdn[strlen(key) + strlen(value) + 2];
                sprintf(newrdn, "%s=%s", key, value);
                if (ldap_modrdn_s(ua1->ld, dn, newrdn) != LDAP_SUCCESS)
                    return FALSE;
                else
                    return TRUE;
            }
        }
        if (ldap_modify_ext_s(ua1->ld, dn, mods, NULL, NULL) !=
            LDAP_SUCCESS)
            return FALSE;
    }

    return TRUE;
}

LUA_DECLARE int ldap_user_mod(struct lua_struct *ua1, char *key,
                              char *value)
{
    return ldap_user_modify(ua1, key, value,
                            ua1->current_account->user_name,
                            LDAP_MOD_REPLACE);
}

LUA_DECLARE int ldap_user_del(struct lua_struct *ua1)
{
    LDAPMessage *e;
    char logbuf[512];
    int ret = TRUE;

    sprintf(logbuf, "Deleting LDAP User: %s",
            ua1->current_account->user_name);
    genlog(LOG_NOTICE, logbuf);

    e = ldap_getpwnam(ua1->ld, GETPARAM("global", "ldapbasedn"),
                      ua1->current_account->user_name);
    if (e != NULL) {
        char *dn;
        dn = ldap_get_dn(ua1->ld, e);
        if (ldap_delete_ext_s(ua1->ld, dn, NULL, NULL) != LDAP_SUCCESS)
            ret = FALSE;
    }
    else {
        ret = FALSE;
    }

    return ret;
}
