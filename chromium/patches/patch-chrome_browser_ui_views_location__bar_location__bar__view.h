$NetBSD$

--- chrome/browser/ui/views/location_bar/location_bar_view.h.orig	2011-04-13 08:01:42.000000000 +0000
+++ chrome/browser/ui/views/location_bar/location_bar_view.h
@@ -25,7 +25,7 @@
 
 #if defined(OS_WIN)
 #include "chrome/browser/autocomplete/autocomplete_edit_view_win.h"
-#elif defined(OS_LINUX)
+#elif defined(OS_LINUX) || defined(OS_BSD)
 #include "chrome/browser/autocomplete/autocomplete_edit_view_gtk.h"
 #endif
 
