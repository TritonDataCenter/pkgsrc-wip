$NetBSD$

Work around Linuxism.

--- higan/nall/file.hpp.orig	2013-01-14 18:27:28.000000000 +0000
+++ higan/nall/file.hpp
@@ -8,6 +8,10 @@
 #include <nall/windows/utf8.hpp>
 #include <nall/stream/memory.hpp>
 
+#ifndef stat64
+#define stat64 stat
+#endif
+
 namespace nall {
   inline FILE* fopen_utf8(const string &utf8_filename, const char *mode) {
     #if !defined(_WIN32)
