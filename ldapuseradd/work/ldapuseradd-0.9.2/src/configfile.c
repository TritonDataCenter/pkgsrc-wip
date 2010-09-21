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

/*     This file is for API related to the configuration file parser.
 */

#include <ctype.h>

#include "ldapuseradd.h"

static char *start_stanza(char *line)
{
    char *colon = strchr(line, ':');
    if (!colon)
        return 0;
    char *suffix = colon + 1;
    for (; *suffix && isspace(*suffix); ++suffix);
    return *suffix ? 0 : colon;
}

LUA_DECLARE struct stanza_config **get_config(int *count)
{
    FILE *fp;
    struct stanza_config **config_headings;

    count[0] = -1;

    config_headings =
        (struct stanza_config **) malloc(sizeof(struct stanza_config *) *
                                         1);

    fp = fopen(CONFIG_FILE, "r");
    if (fp == NULL)
        return NULL;

    while (!feof(fp)) {
        char line[1024], *val;
        fgets(line, 1024, fp);

        if ((val = start_stanza(line)) != NULL) {
            //header
            count[0]++;
            val[0] = 0;
            config_headings =
                realloc(config_headings,
                        sizeof(struct stanza_config *) * (count[0] + 1));
            config_headings[count[0]] = (struct stanza_config *)
                malloc(sizeof(struct stanza_config));
            config_headings[count[0]]->section = str_duplicate(line);
            config_headings[count[0]]->keys =
                (char **) malloc(sizeof(char *));
            config_headings[count[0]]->num = 0;
            config_headings[count[0]]->values =
                (char **) malloc(sizeof(char *));
        }
        else if ((val = strchr(line, '=')) != NULL) {
            //value
            val[0] = 0;
            val = &val[1];
            if (val[strlen(val) - 1] == '\n')
                val[strlen(val) - 1] = 0;

            config_headings[count[0]]->keys =
                realloc(config_headings[count[0]]->keys,
                        sizeof(char *) * (config_headings[count[0]]->num +
                                          1));
            config_headings[count[0]]->keys[config_headings[count[0]]->
                                            num] =
                (char *) malloc(strlen(line) + 1);
            strcpy(config_headings[count[0]]->
                   keys[config_headings[count[0]]->num], line);

            config_headings[count[0]]->values =
                realloc(config_headings[count[0]]->values,
                        sizeof(char *) * (config_headings[count[0]]->num +
                                          1));
            config_headings[count[0]]->values[config_headings[count[0]]->
                                              num] =
                (char *) malloc(strlen(val) + 1);
            strcpy(config_headings[count[0]]->
                   values[config_headings[count[0]]->num], val);

            config_headings[count[0]]->num++;
        }
        else if (line[0] == '#' || strcmp(line, "") == 0) {
            continue;
        }
    }
    count[0]++;
    fclose(fp);
    return config_headings;
}

LUA_DECLARE void print_config(struct stanza_config **config_headings,
                              int count)
{
    int i, i2;
    for (i = 0; i < count; i++) {
        printf("section %s\n", config_headings[i]->section);
        for (i2 = 0; i2 < config_headings[i]->num; i2++) {
            printf("value %s = \"%s\"\n",
                   config_headings[i]->keys[i2],
                   config_headings[i]->values[i2]);
        }
    }
}

LUA_DECLARE char *get_conf_param(struct lua_struct *ua1, char *stanza,
                                 char *key)
{
    char buf[256], buf2[256], logbuf[256], *up;
    if (get_param
        (ua1->config, ua1->num_stanzas, buf, 256, stanza, key) == NULL) {
        sprintf(logbuf, "%s:%s not found", stanza, key);
        genlog(LOG_WARNING, logbuf);
        buf[0] = 0;
    }
    else {
        while ((up = strstr(buf, "%u")) != NULL) {
            up[0] = 0;
            sprintf(buf2, "%s%s%s", buf, ua1->current_account->user_name,
                    &up[2]);
            sprintf(buf, "%s", buf2);
        }

        while ((up = strstr(buf, "%g")) != NULL) {
            up[0] = 0;
            sprintf(buf2, "%s%s%s", buf, ua1->current_account->group_name,
                    &up[2]);
            sprintf(buf, "%s", buf2);
        }

        while ((up = strstr(buf, "%c")) != NULL) {
            up[0] = 0;
            sprintf(buf2, "%s%s%s", buf, ua1->cur_stanza, &up[2]);
            sprintf(buf, "%s", buf2);
        }
    }
    return str_duplicate(buf);
}

LUA_DECLARE char *get_param(struct stanza_config **config_headings,
                            int count, char *buf, int bufsize,
                            char *stanza, char *key)
{
    int i, i2;
    char found = FALSE;
    for (i = 0; i < count; i++) {
        if (strcmp(config_headings[i]->section, stanza) == 0) {
            for (i2 = 0; i2 < config_headings[i]->num; i2++) {
                if (strcmp(config_headings[i]->keys[i2], key) == 0) {
                    found = TRUE;
                    strncpy(buf, config_headings[i]->values[i2], bufsize);
                    break;
                }
            }
            if (found)
                break;
        }
    }

    if (strcmp(stanza, "global") != 0 && !found) {
        return get_param(config_headings, count, buf, bufsize, "global",
                         key);
    }

    return found ? buf : NULL;
}

LUA_DECLARE char *get_stanza(struct lua_struct *ua1)
{
    int i;
    char *ret = NULL, *sect;

    for (i = 0; i < ua1->num_stanzas; i++) {
        int i2;
        sect = ua1->config[i]->section;
        for (i2 = 0; i2 < ua1->config[i]->num; i2++) {
            if (strcmp(ua1->config[i]->keys[i2], "group") == 0) {
                if (isnumeric(ua1->config[i]->values[i2])) {
                    if (ua1->current_account->grp ==
                        atoi(ua1->config[i]->values[i2])) {
                        ret = str_duplicate(sect);
                    }
                }
                else {
                    int stanza_gid =
                        get_gid_group(ua1->ld,
                                      GETPARAM("global", "ldapbasedn"),
                                      ua1->config[i]->values[i2]);
                    if (ua1->current_account->grp == stanza_gid) {
                        ret = str_duplicate(sect);
                    }
                }
            }
        }
    }

    return ret;
}
