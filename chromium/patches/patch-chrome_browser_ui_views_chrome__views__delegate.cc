$NetBSD$

--- chrome/browser/ui/views/chrome_views_delegate.cc.orig	2017-02-02 02:02:50.000000000 +0000
+++ chrome/browser/ui/views/chrome_views_delegate.cc
@@ -57,7 +57,7 @@
 #include "ui/views/widget/native_widget_aura.h"
 #endif
 
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if defined(OS_LINUX) && !defined(OS_CHROMEOS) || defined(OS_BSD)
 #include "ui/views/linux_ui/linux_ui.h"
 #endif
 
@@ -308,7 +308,7 @@ HICON ChromeViewsDelegate::GetSmallWindo
   return GetSmallAppIcon();
 }
 
-#elif defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#elif defined(OS_LINUX) && !defined(OS_CHROMEOS) || defined(OS_BSD)
 gfx::ImageSkia* ChromeViewsDelegate::GetDefaultWindowIcon() const {
   ui::ResourceBundle& rb = ui::ResourceBundle::GetSharedInstance();
   return rb.GetImageSkiaNamed(IDR_PRODUCT_LOGO_64);
@@ -447,7 +447,7 @@ void ChromeViewsDelegate::OnBeforeWidget
 #endif
 }
 
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if defined(OS_LINUX) && !defined(OS_CHROMEOS)  || defined(OS_BSD)
 bool ChromeViewsDelegate::WindowManagerProvidesTitleBar(bool maximized) {
   // On Ubuntu Unity, the system always provides a title bar for maximized
   // windows.
