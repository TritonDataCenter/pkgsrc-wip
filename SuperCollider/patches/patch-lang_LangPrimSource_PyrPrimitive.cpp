$NetBSD$

Mark Linux-specific code.

--- lang/LangPrimSource/PyrPrimitive.cpp.orig	2013-11-27 12:54:02.000000000 +0000
+++ lang/LangPrimSource/PyrPrimitive.cpp
@@ -4214,8 +4214,10 @@ void initMIDIPrimitives();
 #endif
 
 #if !defined(SC_WIN32) && !defined(SC_IPHONE)
+#if defined(__linux__)
 void initHIDPrimitives();
 	initHIDPrimitives();
+#endif
 
 void initSpeechPrimitives();
 	initSpeechPrimitives();
