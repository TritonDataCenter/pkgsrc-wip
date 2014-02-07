$NetBSD$

fpclassify is defined on Illumos.
--- v8-dtoa/platform.h.orig	2011-03-31 19:08:36.000000000 +0000
+++ v8-dtoa/platform.h
@@ -67,7 +67,9 @@ int strncasecmp(const char* s1, const ch
 #endif  // WIN32
 
 #ifdef SOLARIS
+#ifndef fpclassify
 int fpclassify(double x);
+#endif // fpclassify
 #endif // SOLARIS
 
 // GCC specific stuff
