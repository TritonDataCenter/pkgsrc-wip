$NetBSD$

--- Swiften/Compress/ZLibDecompressor.cpp.orig	2012-12-22 12:23:59.000000000 +0000
+++ Swiften/Compress/ZLibDecompressor.cpp
@@ -11,8 +11,6 @@
 
 #include <Swiften/Compress/ZLibCodecompressor_Private.h>
 
-#pragma GCC diagnostic ignored "-Wold-style-cast"
-
 namespace Swift {
 
 ZLibDecompressor::ZLibDecompressor() {
