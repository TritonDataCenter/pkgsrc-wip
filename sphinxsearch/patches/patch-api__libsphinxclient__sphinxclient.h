$NetBSD$

--- api/libsphinxclient/sphinxclient.h.orig	2011-01-31 01:20:58.000000000 +0000
+++ api/libsphinxclient/sphinxclient.h
@@ -16,6 +16,10 @@
 #ifndef _sphinxclient_
 #define _sphinxclient_
 
+#ifndef MSG_NOSIGNAL
+#define MSG_NOSIGNAL 0
+#endif
+
 #ifdef	__cplusplus
 extern "C" {
 #endif
