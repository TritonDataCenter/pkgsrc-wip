$NetBSD$

--- src/fallback.cpp.orig	2017-06-03 12:45:13.000000000 +0000
+++ src/fallback.cpp
@@ -46,7 +46,7 @@
 #undef tparm
 
 /// Checks for known string values and maps to correct number of parameters.
-char *tparm_solaris_kludge(char *str, ...) {
+char *tparm_solaris_kludge(const char *str, ...) {
     long int param[9] = {};
 
     va_list ap;
