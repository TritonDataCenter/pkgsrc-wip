$NetBSD$

--- chrome/browser/browser_process_impl.h.orig	2017-02-02 02:02:48.000000000 +0000
+++ chrome/browser/browser_process_impl.h
@@ -340,7 +340,7 @@ class BrowserProcessImpl : public Browse
 
   std::unique_ptr<ChromeDeviceClient> device_client_;
 
-#if defined(OS_WIN) || defined(OS_MACOSX) || defined(OS_LINUX)
+#if defined(OS_WIN) || defined(OS_MACOSX) || defined(OS_LINUX) || defined(OS_BSD)
   // Any change to this #ifdef must be reflected as well in
   // chrome/browser/memory/tab_manager_browsertest.cc
   std::unique_ptr<memory::TabManager> tab_manager_;
