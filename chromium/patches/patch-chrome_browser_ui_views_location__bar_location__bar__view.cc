$NetBSD$

--- chrome/browser/ui/views/location_bar/location_bar_view.cc.orig	2011-04-13 08:01:42.000000000 +0000
+++ chrome/browser/ui/views/location_bar/location_bar_view.cc
@@ -4,7 +4,7 @@
 
 #include "chrome/browser/ui/views/location_bar/location_bar_view.h"
 
-#if defined(OS_LINUX)
+#if defined(TOOLKIT_USES_GTK)
 #include <gtk/gtk.h>
 #endif
 
