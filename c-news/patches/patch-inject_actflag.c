$NetBSD$

Prototype for exit(3).

--- inject/actflag.c.orig	1993-08-22 00:52:27.000000000 +0000
+++ inject/actflag.c
@@ -3,6 +3,7 @@
  */
 
 #include <stdio.h>
+#include <stdlib.h>
 #include <string.h>
 #include <sys/types.h>
 #include "news.h"
