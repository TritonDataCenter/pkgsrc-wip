$NetBSD$

Handle NetBSD like FreeBSD.

--- src/common/ref.h.orig	2013-11-03 18:24:51.000000000 +0000
+++ src/common/ref.h
@@ -26,7 +26,7 @@ struct ref {
 	long count;
 };
 
-#if (defined(__GLIBC__) || defined(__FreeBSD__) || defined(__darwin__))
+#if (defined(__GLIBC__) || defined(__FreeBSD__) || defined(__darwin__) || defined(__NetBSD__))
 
 /*
  * Get a reference by incrementing the refcount.
