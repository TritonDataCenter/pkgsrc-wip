$NetBSD$

--- third_party/WebKit/Source/JavaScriptCore/jit/JITStubs.cpp.orig	2011-04-13 08:12:06.000000000 +0000
+++ third_party/WebKit/Source/JavaScriptCore/jit/JITStubs.cpp
@@ -96,6 +96,7 @@ namespace JSC {
     // IBM's own file format
 #define HIDE_SYMBOL(name) ".lglobl " #name
 #elif   OS(LINUX)               \
+     || OS(DRAGONFLY)           \
      || OS(FREEBSD)             \
      || OS(OPENBSD)             \
      || OS(SOLARIS)             \
