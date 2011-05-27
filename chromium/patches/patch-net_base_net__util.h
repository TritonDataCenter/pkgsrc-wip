$NetBSD$

--- net/base/net_util.h.orig	2011-05-24 08:01:14.000000000 +0000
+++ net/base/net_util.h
@@ -12,6 +12,7 @@
 #include <windows.h>
 #include <ws2tcpip.h>
 #elif defined(OS_POSIX)
+#include <sys/types.h>
 #include <sys/socket.h>
 #endif
 
