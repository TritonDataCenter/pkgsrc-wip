$NetBSD$

- Horrible kludge

--- libs/spandsp/src/spandsp/saturated.h.orig	2012-09-19 14:44:54.000000000 +0000
+++ libs/spandsp/src/spandsp/saturated.h
@@ -37,6 +37,8 @@
 
 */
 
+long long lrintl(long double);
+
 #if defined(__cplusplus)
 extern "C"
 {
