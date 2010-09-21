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

/*     This file is for miscellaneous API for the program.
 */

#include "ldapuseradd.h"

static int verbosity = 1;

LUA_DECLARE void incr_verbosity()
{
    verbosity++;
}

LUA_DECLARE int get_verbosity()
{
    return verbosity;
}

LUA_DECLARE char *itoa(int num)
{
    char buf[64];
    sprintf(buf, "%d", num);
    return str_duplicate(buf);
}

LUA_DECLARE void genlog(int level, char *msg)
{
    char *lev = "";
    switch (level) {
    case LOG_NOTICE:
        lev = "NOTICE";
        break;
    case LOG_FATAL:
        lev = "ERROR";
        break;
    case LOG_WARNING:
        lev = "WARNING";
        break;
    case LOG_INFO:
        lev = "INFO";
        break;
    }
    if (get_verbosity() >= level)
        fprintf(stderr, "%s: %s\n", lev, msg);
}

LUA_DECLARE void die(char *msg)
{
    genlog(LOG_FATAL, msg);
    exit(1);
}


/* Not dynamically exported for obvious reasons. */
int run_hook(char *hook_name, char *lib_name, struct lua_struct *ua1)
{
    void *handle;
    int (*hook) (struct lua_struct *);
    const char *error;
    int ret;

    handle = dlopen(lib_name, RTLD_NOW | RTLD_GLOBAL);
    if (!handle) {
        die(dlerror());
    }

    hook = dlsym(handle, hook_name);
    if ((error = dlerror()) != NULL) {
        die((char *) error);
    }

    ret = (*hook) (ua1);
    dlclose(handle);

    return ret;
}

LUA_DECLARE int run_command(char *prgm, ...)
{
    size_t len;
    char *retbuf;
    va_list argp;
    char *p;
    int cnt = 0;

    if (prgm == NULL)
        return -1;
    else
        len = strlen(prgm);

    va_start(argp, prgm);
    while ((p = va_arg(argp, char *)) != NULL) {
        len += strlen(p);
        cnt++;
    }
    va_end(argp);

    retbuf = (char *) malloc(len + 1 + cnt);    /* +1 for trailing \0, argc for separators */
    if (retbuf == NULL)
        return -1;              /* error */
    (void) strcpy(retbuf, prgm);

    va_start(argp, prgm);       /* restart for second scan */
    while ((p = va_arg(argp, char *)) != NULL) {
        (void) strcat(retbuf, " ");
        (void) strcat(retbuf, p);
    }
    va_end(argp);

    return system(retbuf);
}

LUA_DECLARE node *push_stack(node * top, char **pair)
{
    node *new_node;
    new_node = (node *) malloc(sizeof(node));
    new_node->item = pair;
    new_node->next = top;
    //top=new_node;
    return (new_node);
}

LUA_DECLARE node *pop_stack(node * top)
{
    node *temp;
    if (top != NULL) {
        temp = top->next;
        free(top);
        top = temp;
    }
    else {
        genlog(LOG_INFO, "The stack is empty.");
    }
    return (top);
}
