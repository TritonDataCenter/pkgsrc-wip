$NetBSD$

--- Swiften/Compress/ZLibCompressor.cpp.orig	2011-04-22 21:07:48.000000000 +0000
+++ Swiften/Compress/ZLibCompressor.cpp
@@ -6,8 +6,6 @@
 
 #include "Swiften/Compress/ZLibCompressor.h"
 
-#pragma GCC diagnostic ignored "-Wold-style-cast"
-
 namespace Swift {
 
 ZLibCompressor::ZLibCompressor() {
