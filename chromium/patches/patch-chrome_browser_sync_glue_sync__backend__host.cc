$NetBSD$

--- chrome/browser/sync/glue/sync_backend_host.cc.orig	2011-04-13 08:01:39.000000000 +0000
+++ chrome/browser/sync/glue/sync_backend_host.cc
@@ -551,8 +551,12 @@ std::string MakeUserAgentForSyncapi() {
   user_agent += "WIN ";
 #elif defined(OS_LINUX)
   user_agent += "LINUX ";
+#elif defined(OS_DRAGONFLY)
+  user_agent += "DRAGONFLY ";
 #elif defined(OS_FREEBSD)
   user_agent += "FREEBSD ";
+#elif defined(OS_NETBSD)
+  user_agent += "NETBSD ";
 #elif defined(OS_OPENBSD)
   user_agent += "OPENBSD ";
 #elif defined(OS_MACOSX)
