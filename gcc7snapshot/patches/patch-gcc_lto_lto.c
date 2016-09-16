$NetBSD: patch-gcc_lto_lto.c,v 1.2 2015/02/05 15:55:39 keckhardt Exp $

--- gcc/lto/lto.c.orig	2015-01-30 16:15:00.000000000 +0000
+++ gcc/lto/lto.c
@@ -2495,7 +2495,13 @@ wait_for_child ()
 #ifndef WCONTINUED
 #define WCONTINUED 0
 #endif
-      int w = waitpid (0, &status, WUNTRACED | WCONTINUED);
+
+#if defined(__NetBSD__)
+      int w = waitpid(0, &status, WUNTRACED | WALLSIG);
+#else
+      int w = waitpid(0, &status, WUNTRACED | WCONTINUED);
+#endif
+ 
       if (w == -1)
 	fatal_error (input_location, "waitpid failed");
 
