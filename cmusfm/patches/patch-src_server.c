$NetBSD$

mem*(3) and str*(3) used need <string.h>

--- src/server.c.orig	2014-05-08 15:59:02.000000000 +0000
+++ src/server.c
@@ -21,6 +21,7 @@
 #include <unistd.h>
 #include <stdlib.h>
 #include <stdio.h>
+#include <string.h>
 #include <fcntl.h>
 #include <sys/socket.h>
 #include <sys/un.h>
