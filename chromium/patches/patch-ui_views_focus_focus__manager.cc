$NetBSD$

--- ui/views/focus/focus_manager.cc.orig	2011-05-24 08:01:59.000000000 +0000
+++ ui/views/focus/focus_manager.cc
@@ -8,7 +8,7 @@
 
 #include "build/build_config.h"
 
-#if defined(OS_LINUX)
+#if defined(TOOLKIT_USES_GTK)
 #include <gtk/gtk.h>
 #endif
 
