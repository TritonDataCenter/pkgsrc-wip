$NetBSD$

Prototype for str*(3).

--- libcnews/hostname.c.orig	1993-11-21 02:24:17.000000000 +0000
+++ libcnews/hostname.c
@@ -7,6 +7,7 @@
  */
 
 #include <stdio.h>
+#include <string.h>
 #include <sys/types.h>
 
 #include "libc.h"
