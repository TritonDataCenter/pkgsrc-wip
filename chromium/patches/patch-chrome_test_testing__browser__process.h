$NetBSD$

--- chrome/test/testing_browser_process.h.orig	2011-05-24 08:01:56.000000000 +0000
+++ chrome/test/testing_browser_process.h
@@ -49,7 +49,7 @@ class TestingBrowserProcess : public Bro
 
   virtual IOThread* io_thread();
 
-#if defined(OS_LINUX)
+#if defined(USE_X11)
   virtual base::Thread* background_x11_thread();
 #endif
 
