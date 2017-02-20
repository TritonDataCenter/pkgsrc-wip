$NetBSD$

--- chrome/browser/ui/views/apps/chrome_native_app_window_views_aura.cc.orig	2017-02-02 02:02:50.000000000 +0000
+++ chrome/browser/ui/views/apps/chrome_native_app_window_views_aura.cc
@@ -19,7 +19,7 @@
 #include "ui/gfx/image/image_skia.h"
 #include "ui/views/widget/widget.h"
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
 #include "chrome/browser/shell_integration_linux.h"
 #endif
 
@@ -57,7 +57,7 @@ void ChromeNativeAppWindowViewsAura::OnB
     const AppWindow::CreateParams& create_params,
     views::Widget::InitParams* init_params,
     views::Widget* widget) {
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if defined(OS_LINUX) && !defined(OS_CHROMEOS) || defined(OS_BSD)
   std::string app_name = web_app::GenerateApplicationNameFromExtensionId(
       app_window()->extension_id());
   // Set up a custom WM_CLASS for app windows. This allows task switchers in
