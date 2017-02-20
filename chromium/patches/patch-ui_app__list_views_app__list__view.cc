$NetBSD$

--- ui/app_list/views/app_list_view.cc.orig	2017-02-02 02:03:13.000000000 +0000
+++ ui/app_list/views/app_list_view.cc
@@ -70,7 +70,7 @@ const int kArrowOffset = 10;
 
 // Determines whether the current environment supports shadows bubble borders.
 bool SupportsShadow() {
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if (defined(OS_LINUX) || defined(OS_BSD)) && !defined(OS_CHROMEOS)
   // Shadows are not supported on (non-ChromeOS) Linux.
   return false;
 #endif
@@ -538,7 +538,7 @@ void AppListView::OnBeforeBubbleWidgetIn
   if (!params->native_widget && delegate_ && delegate_->ForceNativeDesktop())
     params->native_widget = new views::DesktopNativeWidgetAura(widget);
 #endif
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
   // Set up a custom WM_CLASS for the app launcher window. This allows task
   // switchers in X11 environments to distinguish it from main browser windows.
   params->wm_class_name = kAppListWMClass;
