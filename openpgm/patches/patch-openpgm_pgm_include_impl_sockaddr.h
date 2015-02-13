$NetBSD$

--- openpgm/pgm/include/impl/sockaddr.h.orig	2012-12-04 02:57:19.000000000 +0000
+++ openpgm/pgm/include/impl/sockaddr.h
@@ -34,7 +34,7 @@
 #	include <sys/socket.h>
 #	include <netdb.h>
 #endif
-#if defined( __APPLE__ ) || defined( __FreeBSD__ )
+#if defined( __APPLE__ ) || defined( __FreeBSD__ ) || defined( __NetBSD__ )
 /* incomplete RFC 3678 API support */
 #	include <pgm/in.h>
 #endif
