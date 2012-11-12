$NetBSD$

atoi() prototype.

--- common/network/TcpSocket.cxx.orig	2006-05-15 16:56:20.000000000 +0000
+++ common/network/TcpSocket.cxx
@@ -33,6 +33,7 @@
 #include <unistd.h>
 #include <errno.h>
 #include <string.h>
+#include <stdlib.h>
 #include <signal.h>
 #include <fcntl.h>
 #endif
