$NetBSD$

sys/resourcevar.h is not supposed to be exposed to userland.

--- and-OpenBSD.c.orig	2004-03-06 13:34:02.000000000 +0000
+++ and-OpenBSD.c
@@ -31,8 +31,9 @@
 #include <sys/proc.h>
 #include <sys/time.h>
 #include <sys/resource.h>
+#if !defined(__NetBSD__)
 #include <sys/resourcevar.h>
-
+#endif
 #ifdef __FreeBSD__
 #include <sys/user.h>
 #endif
