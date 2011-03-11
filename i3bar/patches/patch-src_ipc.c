$NetBSD$

--- src/ipc.c.orig	2010-12-23 15:39:53.000000000 +0000
+++ src/ipc.c
@@ -10,6 +10,7 @@
  */
 #include <stdlib.h>
 #include <stdio.h>
+#include <string.h>
 #include <unistd.h>
 #include <stdint.h>
 #include <sys/socket.h>
