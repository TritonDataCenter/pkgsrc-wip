$NetBSD$

--- media/tools/shader_bench/shader_bench.cc.orig	2011-05-24 08:01:03.000000000 +0000
+++ media/tools/shader_bench/shader_bench.cc
@@ -24,7 +24,7 @@
 #include "media/tools/shader_bench/window.h"
 #include "ui/gfx/native_widget_types.h"
 
-#if defined(OS_LINUX)
+#if defined(TOOLKIT_USES_GTK)
 #include <gtk/gtk.h>
 #endif
 
@@ -97,7 +97,7 @@ int main(int argc, char** argv) {
   }
 
   // Read command line.
-#if defined(OS_LINUX)
+#if defined(TOOLKIT_USES_GTK)
   gtk_init(&argc, &argv);
 #endif
   CommandLine::Init(argc, argv);
