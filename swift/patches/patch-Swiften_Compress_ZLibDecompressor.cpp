$NetBSD$

--- Swiften/Compress/ZLibDecompressor.cpp.orig	2011-04-22 21:07:48.000000000 +0000
+++ Swiften/Compress/ZLibDecompressor.cpp
@@ -6,8 +6,6 @@
 
 #include "Swiften/Compress/ZLibDecompressor.h"
 
-#pragma GCC diagnostic ignored "-Wold-style-cast"
-
 namespace Swift {
 
 ZLibDecompressor::ZLibDecompressor() {
