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

//TODO: no more explicitly sized buffers

#ifndef _LDAPUSERADD_H
#define _LDAPUSERADD_H

//boolean
#define FALSE 0
#define TRUE !FALSE

//status
#define SUCCESS 0
#define FAILURE 1

//using powers of 2 incase we decide to allow multiple actions
#define CHECK 2
#define NEW_ACCOUNT 4
#define NEW_GROUP 8
#define MOD_ACCOUNT 16
#define MOD_GROUP 32
#define DEL_ACCOUNT 64
#define DEL_GROUP 128

#define LUA_UNSET -1
#define LUA_LATER -10

#ifndef LUA_DECLARE
#define LUA_DECLARE
//__declspec(dllexport)
#endif

#ifndef HOOK_COMPILE
//ldapuseradd.c
void catch_int();               //catch ctrl-c (sig. handler)
#endif

#define LDAP_DEPRECATED TRUE

#define _GNU_SOURCE
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <string.h>
#include <dlfcn.h>
#include <stdio.h>
#include <dirent.h>
#include <ldap.h>
#include <unistd.h>
#include <ctype.h>

struct element {
    char **item;
    struct element *next;
};

typedef struct element node;

#include "account.h"
#include "functions.h"
#include "argv.h"
#include "chmod.h"
#include "chown.h"
#include "config.h"
#include "configfile.h"
#include "ldapapi.h"
#include "mkdir.h"
#include "pwgen.h"
#include "rmdir.h"
#include "str.h"
#include "userstate.h"
#include "wc.h"

#endif
