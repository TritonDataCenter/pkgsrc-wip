$NetBSD$

Fix build with png-1.6.

--- src/Png.h.orig	2012-06-19 21:12:46.000000000 +0000
+++ src/Png.h
@@ -19,6 +19,7 @@
 #include <istream>
 #include <ostream>
 #include <string>
+#include <string.h>
 #include <png.h>
 
 namespace PieDock
