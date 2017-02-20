$NetBSD$

--- ui/views/corewm/tooltip_aura.cc.orig	2017-02-02 02:03:13.000000000 +0000
+++ ui/views/corewm/tooltip_aura.cc
@@ -34,7 +34,7 @@ const int kCursorOffsetY = 15;
 
 // TODO(varkha): Update if native widget can be transparent on Linux.
 bool CanUseTranslucentTooltipWidget() {
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if (defined(OS_LINUX) || defined(OS_BSD)) && !defined(OS_CHROMEOS)
   return false;
 #else
   return true;
