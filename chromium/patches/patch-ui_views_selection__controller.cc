$NetBSD$

--- ui/views/selection_controller.cc.orig	2017-02-02 02:03:13.000000000 +0000
+++ ui/views/selection_controller.cc
@@ -20,7 +20,7 @@ SelectionController::SelectionController
       delegate_(delegate),
       handles_selection_clipboard_(false) {
 // On Linux, update the selection clipboard on a text selection.
-#if defined(OS_LINUX) && !defined(OS_CHROMEOS)
+#if (defined(OS_LINUX) || defined(OS_BSD)) && !defined(OS_CHROMEOS)
   set_handles_selection_clipboard(true);
 #endif
 
