$NetBSD$

Commented out functions as they break when built with clang as they are out of line declarations.

--- src/parsing/streams.h.orig	2013-03-16 11:19:18.000000000 +0000
+++ src/parsing/streams.h
@@ -116,9 +116,9 @@ public:
 	bool eof() const;
 };
 
-memorystream& lightspark::operator>>(memorystream& in, lightspark::u8& v);
-memorystream& lightspark::operator>>(memorystream& in, lightspark::s24& v);
-memorystream& lightspark::operator>>(memorystream& in, lightspark::u30& v);
-memorystream& lightspark::operator>>(memorystream& in, lightspark::u32& v);
+//memorystream& lightspark::operator>>(memorystream& in, lightspark::u8& v);
+//memorystream& lightspark::operator>>(memorystream& in, lightspark::s24& v);
+//memorystream& lightspark::operator>>(memorystream& in, lightspark::u30& v);
+//memorystream& lightspark::operator>>(memorystream& in, lightspark::u32& v);
 
 #endif /* PARSING_STREAMS_H */
