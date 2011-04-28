$NetBSD$

--- remoting/tools/client_webserver/main.c.orig	2011-04-13 08:01:07.000000000 +0000
+++ remoting/tools/client_webserver/main.c
@@ -21,6 +21,7 @@
 #include <netinet/in.h>
 
 #if defined (OS_POSIX)
+#include <signal.h>
 #include <unistd.h>
 #endif //  OS_POSIX
 
