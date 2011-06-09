$NetBSD$

Prototype for exit(3).

--- batch/batcher.c.orig	1994-11-28 01:14:35.000000000 +0000
+++ batch/batcher.c
@@ -12,6 +12,7 @@
  */
 
 #include <stdio.h>
+#include <stdlib.h>
 #include <string.h>
 #include <signal.h>
 #include <sys/types.h>
