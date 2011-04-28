$NetBSD$

--- third_party/WebKit/Source/JavaScriptCore/wtf/StringExtras.h.orig	2011-04-13 08:12:03.000000000 +0000
+++ third_party/WebKit/Source/JavaScriptCore/wtf/StringExtras.h
@@ -100,7 +100,7 @@ inline int strcasecmp(const char* s1, co
 
 #endif
 
-#if COMPILER(MSVC) || COMPILER(RVCT) || OS(WINDOWS) || OS(LINUX) || OS(SOLARIS)
+#if COMPILER(MSVC) || COMPILER(RVCT) || OS(WINDOWS) || OS(LINUX) || OS(SOLARIS) || OS(BSD)
 // FIXME: should check HAVE_STRNSTR
 
 inline char* strnstr(const char* buffer, const char* target, size_t bufferLength)
