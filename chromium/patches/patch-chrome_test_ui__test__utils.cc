$NetBSD$

--- chrome/test/ui_test_utils.cc.orig	2011-04-13 08:01:56.000000000 +0000
+++ chrome/test/ui_test_utils.cc
@@ -357,7 +357,7 @@ void RunMessageLoop() {
 #if defined(TOOLKIT_VIEWS)
   views::AcceleratorHandler handler;
   loop->Run(&handler);
-#elif defined(OS_LINUX)
+#elif defined(OS_LINUX) || defined(OS_BSD)
   loop->Run(NULL);
 #else
   loop->Run();
