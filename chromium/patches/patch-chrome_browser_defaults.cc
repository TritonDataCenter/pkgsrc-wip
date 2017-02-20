$NetBSD$

--- chrome/browser/defaults.cc.orig	2017-02-02 02:02:48.000000000 +0000
+++ chrome/browser/defaults.cc
@@ -44,7 +44,7 @@ const bool kSyncAutoStarts = true;
 const bool kSyncAutoStarts = false;
 #endif
 
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if (defined(OS_LINUX) || defined(OS_BSD)) && !defined(OS_CHROMEOS)
 const bool kScrollEventChangesTab = true;
 #else
 const bool kScrollEventChangesTab = false;
