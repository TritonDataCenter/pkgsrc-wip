$NetBSD$

Prototype for free()

--- libcnews/ngmatch.c.orig	1993-01-15 10:54:24.000000000 +0000
+++ libcnews/ngmatch.c
@@ -46,6 +46,7 @@
  * Thus preparsing really pays off; using ngmatch isn't a win.
  */
 
+#include <stdlib.h>
 #include <stdio.h>
 #include <string.h>
 #include <sys/types.h>
