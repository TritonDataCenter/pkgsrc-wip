$NetBSD$

--- lib/tt/bin/ttdbserverd/db_server_svc.C.orig	2012-09-28 20:51:40.000000000 +0000
+++ lib/tt/bin/ttdbserverd/db_server_svc.C
@@ -63,7 +63,7 @@
 #include <termios.h>
 #include <time.h>
 
-#if defined(sgi) || defined(__FreeBSD__)
+#if defined(sgi) || defined(CSRG_BASED)
 #include <getopt.h>
 #endif
 
