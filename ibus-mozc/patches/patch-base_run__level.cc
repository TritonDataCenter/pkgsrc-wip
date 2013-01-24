$NetBSD$

--- base/run_level.cc.orig	2012-08-31 05:37:06.000000000 +0000
+++ base/run_level.cc
@@ -34,7 +34,7 @@
 #include <aclapi.h>
 #endif  // OS_WINDOWS
 
-#ifdef OS_LINUX
+#if defined(OS_LINUX) || defined(OS_NETBSD)
 #include <unistd.h>
 #include <sys/types.h>
 #endif  // OS_LINUX
