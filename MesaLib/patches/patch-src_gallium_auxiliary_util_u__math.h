$NetBSD$

--- src/gallium/auxiliary/util/u_math.h.orig	2015-02-27 23:29:19.000000000 +0000
+++ src/gallium/auxiliary/util/u_math.h
@@ -531,6 +531,9 @@ unsigned ffs( unsigned u )
 #elif defined(__MINGW32__) || defined(PIPE_OS_ANDROID)
 #define ffs __builtin_ffs
 #define ffsll __builtin_ffsll
+#elif defined(__NetBSD__)
+#include <sys/bitops.h>
+#define ffsll ffs64
 #endif
 
 #endif /* FFS_DEFINED */
