$NetBSD$

Handle NetBSD like FreeBSD.

--- src/common/compat.c.orig	2013-11-03 18:24:51.000000000 +0000
+++ src/common/compat.c
@@ -19,7 +19,7 @@
 
 #include "compat.h"
 
-#if (defined(__GLIBC__) || defined(__FreeBSD__) || defined(__darwin__))
+#if (defined(__GLIBC__) || defined(__FreeBSD__) || defined(__darwin__) || defined(__NetBSD__))
 
 /*
  * Initialize a pthread mutex. This never fails.
@@ -71,4 +71,4 @@ void tsocks_mutex_unlock(tsocks_mutex_t 
 	assert(!ret);
 }
 
-#endif /* __GLIBC__, __darwin__, __FreeBSD__ */
+#endif /* __GLIBC__, __darwin__, __FreeBSD__, __NetBSD__ */
