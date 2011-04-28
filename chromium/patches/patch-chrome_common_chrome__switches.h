$NetBSD$

--- chrome/common/chrome_switches.h.orig	2011-04-13 08:01:58.000000000 +0000
+++ chrome/common/chrome_switches.h
@@ -369,7 +369,7 @@ extern const char kEnableMediaPlayer[];
 extern const char kEnableAdvancedFileSystem[];
 #endif
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
 extern const char kScrollPixels[];
 #endif
 
