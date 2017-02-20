$NetBSD$

--- components/update_client/update_query_params.cc.orig	2017-02-02 02:02:53.000000000 +0000
+++ components/update_client/update_query_params.cc
@@ -31,6 +31,10 @@ const char kOs[] =
     "linux";
 #elif defined(OS_OPENBSD)
     "openbsd";
+#elif defined(OS_FREEBSD)
+    "freebsd";
+#elif defined(OS_NETBSD)
+    "netbsd";
 #else
 #error "unknown os"
 #endif
