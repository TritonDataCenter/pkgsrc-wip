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

#include "hooks.h"

/**
 * TODO: Tweak and stress test hook_web.
 */

/**
 * Declare non-"hook entry point" routines here.
 */
int addApacheVirtualHost(struct lua_struct *);  //setup new site (*.netizenweb.com)
int delApacheVirtualHost(struct lua_struct *);  //remove existing site

int hook_web_add(struct lua_struct *ua1)
{
    char logbuf[256];
    char **nwebl;
    int ret, nnwebl, i2;
    char *cweb;

    if (strcmp(cweb = GETPARAM(ua1->cur_stanza, "web"), "") != 0) {
        ret = dir_make(cweb,
                       S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH, FALSE, ua1);
        if (!ret) {
            genlog(LOG_WARNING, "Could not create webspace.");
        }
        else {
            sprintf(logbuf, "Created web directory %s", cweb);
            genlog(LOG_INFO, logbuf);
        }

        nwebl =
            str_list(GETPARAM(ua1->cur_stanza, "weblink"), ",", &nnwebl);
        for (i2 = 0; i2 < nnwebl; i2++) {
            ret = symlink(cweb, nwebl[i2]);
            if (ret != 0) {
                genlog(LOG_WARNING, "Could not create webspace link.");
            }
            else {
                sprintf(logbuf, "Created web link %s", nwebl[i2]);
                genlog(LOG_INFO, logbuf);
            }
        }
    }
}

int hook_web_del(struct lua_struct *ua1)
{
    int ret;
    char **owebl;
    char *oweblink;
    int nowebl, i;
    char logbuf[256];

    if (strcmp(GETPARAM(ua1->cur_stanza, "web"), "") != 0) {
        ret = dir_delete(GETPARAM(ua1->cur_stanza, "web"), TRUE);
        if (!ret) {
            genlog(LOG_WARNING, "Could not delete webspace");
        }
        else {
            genlog(LOG_INFO, "Deleted webspace");
        }

        owebl = str_list(oweblink, ",", &nowebl);
        for (i = 0; i < nowebl; i++) {
            ret = unlink(owebl[i]);
            if (ret != 0) {
                sprintf(logbuf, "Could not delete old web link %s",
                        owebl[i]);
                genlog(LOG_WARNING, logbuf);
            }
            else {
                sprintf(logbuf, "Deleted old web link %s", owebl[i]);
                genlog(LOG_INFO, logbuf);
            }
        }
    }

    if (strcmp(GETPARAM(ua1->cur_stanza, "apache"), "true") == 0) {
        delApacheVirtualHost(ua1);
    }
}


int addApacheVirtualHost(struct lua_struct *ua1)
{
    FILE *ap2;
    char *dir = GETPARAM(ua1->cur_stanza, "apachesites");
    char *webroot = GETPARAM(ua1->cur_stanza, "web");
    char *aport = GETPARAM(ua1->cur_stanza, "apacheport");
    char *adomain = GETPARAM(ua1->cur_stanza, "apachedomain");
    char *actl = GETPARAM(ua1->cur_stanza, "apachectl");
    chdir(dir);
    ap2 = fopen(ua1->current_account->user_name, "w");
    fprintf(ap2, "NameVirtualHost *:%s\n", aport);
    fprintf(ap2, "<VirtualHost *:%s>\n", aport);
    fprintf(ap2, "    ServerName %s.%s\n", ua1->current_account->user_name,
            adomain);
    fprintf(ap2, "    DocumentRoot %s\n", webroot);
    fprintf(ap2, "    <Directory %s>\n", webroot);
    fputs("    Options Indexes Includes FollowSymLinks MultiViews\n", ap2);
    fputs("    AllowOverride None\n", ap2);
    fputs("    Order allow,deny\n", ap2);
    fputs("    Allow from all\n", ap2);
    fputs("</Directory>\n", ap2);
    fputs("</VirtualHost>\n", ap2);
    fclose(ap2);
    run_command(actl, "restart", 0);
}

int delApacheVirtualHost(struct lua_struct *ua1)
{
    char *dir = GETPARAM(ua1->cur_stanza, "apachesites");
    char *actl = GETPARAM(ua1->cur_stanza, "apachectl");
    chdir(dir);
    run_command("rm", ua1->current_account->user_name, 0);
    run_command(actl, "restart", 0);
}
