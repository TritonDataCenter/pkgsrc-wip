$NetBSD$

--- third_party/libyuv/source/mjpeg_decoder.cc.orig	2016-11-10 20:03:02.000000000 +0000
+++ third_party/libyuv/source/mjpeg_decoder.cc
@@ -25,7 +25,6 @@
 #endif
 
 #endif
-struct FILE;  // For jpeglib.h.
 
 // C++ build requires extern C for jpeg internals.
 #ifdef __cplusplus
