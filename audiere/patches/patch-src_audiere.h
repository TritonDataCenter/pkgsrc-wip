$NetBSD$

* Fix recent gcc build from Arch Linux

--- src/audiere.h.orig	2006-02-14 04:57:01.000000000 +0000
+++ src/audiere.h
@@ -28,6 +28,7 @@
 
 #include <vector>
 #include <string>
+#include <cstring>
 
 #ifdef _MSC_VER
 #pragma warning(disable : 4786)
