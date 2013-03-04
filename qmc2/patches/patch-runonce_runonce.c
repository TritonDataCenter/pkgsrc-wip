$NetBSD$

Fixes "errno not declared in this scope" error.

--- runonce/runonce.c.orig	2013-01-06 17:07:27.000000000 +0000
+++ runonce/runonce.c
@@ -35,7 +35,11 @@
 #include <sys/time.h>
 #include <time.h>
 
+#if defined(__NetBSD__)
+#include <errno.h>
+#else
 #include <sys/errno.h>
+#endif
 #include <sys/types.h>
 #include <signal.h>		/* for kill() */
 
