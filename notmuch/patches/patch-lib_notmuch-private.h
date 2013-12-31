$NetBSD$

Doesn't compile with clang.

--- lib/notmuch-private.h.orig	2013-08-03 11:29:40.000000000 +0000
+++ lib/notmuch-private.h
@@ -64,7 +64,7 @@ NOTMUCH_BEGIN_DECLS
 #define unused(x) x __attribute__ ((unused))
 
 #ifdef __cplusplus
-# define visible __attribute__((visibility("default")))
+# define visible
 #else
 # define visible
 #endif
