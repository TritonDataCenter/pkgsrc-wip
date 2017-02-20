$NetBSD$

--- chrome/browser/safe_browsing/permission_reporter.cc.orig	2017-02-02 02:02:49.000000000 +0000
+++ chrome/browser/safe_browsing/permission_reporter.cc
@@ -193,7 +193,7 @@ bool PermissionReporter::BuildReport(con
 #if defined(OS_ANDROID)
   report.set_platform_type(PermissionReport::ANDROID_PLATFORM);
 #elif defined(OS_MACOSX) || defined(OS_WIN) || defined(OS_CHROMEOS) || \
-    defined(OS_LINUX)
+    defined(OS_LINUX) || defined(OS_BSD)
   report.set_platform_type(PermissionReport::DESKTOP_PLATFORM);
 #else
 #error Unsupported platform.
