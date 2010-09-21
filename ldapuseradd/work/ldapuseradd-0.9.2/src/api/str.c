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

/*     This implements various string handling functionality.
 */

#include "ldapuseradd.h"

LUA_DECLARE int isempty(char const *s)
{
    for (; *s && isspace(*s); ++s);
    return !*s;
}

LUA_DECLARE int isnumeric(char const *s)
{
    for (; *s && isdigit(*s); ++s);
    return !*s;
}

LUA_DECLARE char **str_array(char *str)
{
    char **stra, *loc, *buf;
    int i = 0, num_of_parens = 0, offset = 0;
    buf = str_duplicate(str);
    while ((loc = strstr(&buf[offset], "%(,)")) != NULL) {
        num_of_parens++;
        offset = loc - buf;
        offset += 4;
    }

    stra = (char **) malloc(sizeof(char *) * (num_of_parens + 2));
    if (num_of_parens > 0) {
        while ((loc = strstr(buf, "%(,)")) != NULL) {
            loc[0] = 0;
            stra[i] = buf;
            buf = &loc[4];
            i++;
        }
    }
    stra[i] = buf;
    stra[i + 1] = NULL;
    return stra;
}

/**
  * replacement of strdup, which is not standard.
  */
LUA_DECLARE char *str_duplicate(const char *s)
{
    char *result = (char *) malloc(strlen(s) + 1);
    if (result == (char *) 0)
        return (char *) 0;
    strcpy(result, s);
    return result;
}

LUA_DECLARE char *str_replace(char *buf, char *find, char *replace)
{
    int find_len;               //length of second segment - before
    int replace_len;            //length of second segment - after
    char *find_idx;             //start position of second segment
    long seg1;                  //length of first segment
    long seg3;                  //length of third segment
    char *new_buffer;           //[seg1 + replace_len + seg3 + 1];

    find_len = strlen(find);    //length of second segment - before
    replace_len = strlen(replace);      //length of second segment - after
    find_idx = strstr(buf, find);       //start position of second segment
    if (find_idx == NULL)
        return NULL;
    seg1 = find_idx - buf;      //length of first segment
    seg3 = strlen(buf) - find_len - seg1;       //length of third segment
    new_buffer = (char *) malloc(seg1 + replace_len + seg3 + 1);
    strncpy(new_buffer, buf, seg1);
    strncpy(&new_buffer[seg1], replace, replace_len);
    strncpy(&new_buffer[seg1 + replace_len], &buf[seg1 + find_len],
            seg3 + 1);
    return str_duplicate(new_buffer);
}

LUA_DECLARE char **str_list(char *source, char *delim, int *actual_dalen)
{
    char *token;
    char **buffer;

    buffer = (char **) malloc(sizeof(char *));

    if ((token = strtok(source, delim)) != NULL) {
        //token
        buffer[actual_dalen[0]] = (char *) malloc(strlen(token) + 1);
        strncpy(buffer[actual_dalen[0]], token, strlen(token) + 1);
        actual_dalen[0]++;
        while ((token = strtok(NULL, delim)) != NULL) {
            //token
            buffer =
                (char **) realloc(buffer,
                                  sizeof(char *) * (actual_dalen[0] + 1));
            buffer[actual_dalen[0]] = (char *) malloc(strlen(token) + 1);
            strncpy(buffer[actual_dalen[0]], token, strlen(token) + 1);
            actual_dalen[0]++;
        }
    }

    if (strcmp(source, "") == 0)
        actual_dalen[0] = 0;

    return buffer;
}
