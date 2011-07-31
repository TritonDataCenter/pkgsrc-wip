$NetBSD$

--- Swiften/StringCodecs/Base64.cpp.orig	2011-04-22 21:07:48.000000000 +0000
+++ Swiften/StringCodecs/Base64.cpp
@@ -11,8 +11,6 @@
 
 namespace Swift {
 
-#pragma GCC diagnostic ignored "-Wold-style-cast"
-
 std::string Base64::encode(const ByteArray &s) {
 	int i;
 	int len = s.getSize();
