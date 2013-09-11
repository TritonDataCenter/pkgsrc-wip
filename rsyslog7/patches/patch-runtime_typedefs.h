$NetBSD$

SunOS has off64_t defined.
--- runtime/typedefs.h.orig	2013-08-30 16:30:41.000000000 +0000
+++ runtime/typedefs.h
@@ -156,7 +156,9 @@ typedef enum {
 } fiop_t;
 
 #ifndef HAVE_LSEEK64
+# ifndef __sun
 	typedef off_t off64_t;
+# endif
 #endif
 
 /* types of configuration handlers
