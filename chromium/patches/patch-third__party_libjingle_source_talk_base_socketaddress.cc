$NetBSD$

--- third_party/libjingle/source/talk/base/socketaddress.cc.orig	2011-04-13 08:13:43.000000000 +0000
+++ third_party/libjingle/source/talk/base/socketaddress.cc
@@ -29,6 +29,7 @@
 #include <sys/types.h>
 #include <sys/socket.h>
 #include <netinet/in.h>
+#include <netinet/in_systm.h>
 #include <netinet/ip.h>
 #include <arpa/inet.h>
 #include <netdb.h>
