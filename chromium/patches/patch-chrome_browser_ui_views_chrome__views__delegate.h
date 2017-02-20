$NetBSD$

--- chrome/browser/ui/views/chrome_views_delegate.h.orig	2017-02-02 02:02:50.000000000 +0000
+++ chrome/browser/ui/views/chrome_views_delegate.h
@@ -37,7 +37,7 @@ class ChromeViewsDelegate : public views
 #if defined(OS_WIN)
   HICON GetDefaultWindowIcon() const override;
   HICON GetSmallWindowIcon() const override;
-#elif defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#elif (defined(OS_LINUX) && !defined(OS_CHROMEOS)) || defined(OS_BSD)
   gfx::ImageSkia* GetDefaultWindowIcon() const override;
 #endif
 
@@ -50,7 +50,7 @@ class ChromeViewsDelegate : public views
   void OnBeforeWidgetInit(
       views::Widget::InitParams* params,
       views::internal::NativeWidgetDelegate* delegate) override;
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if (defined(OS_LINUX) && !defined(OS_CHROMEOS)) || defined(OS_BSD)
   bool WindowManagerProvidesTitleBar(bool maximized) override;
 #endif
   ui::ContextFactory* GetContextFactory() override;
