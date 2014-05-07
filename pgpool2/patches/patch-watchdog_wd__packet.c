$NetBSD$

Needs sys/wait.h here too.
--- watchdog/wd_packet.c.orig	2014-03-24 14:30:01.000000000 +0000
+++ watchdog/wd_packet.c
@@ -33,6 +33,7 @@
 #include <sys/un.h>
 #include <sys/types.h>
 #include <sys/socket.h>
+#include <sys/wait.h>
 #include <netinet/in.h>
 #include <netinet/tcp.h>
 #include <netdb.h>
