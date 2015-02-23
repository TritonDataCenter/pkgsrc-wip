$NetBSD: patch-Source_JavaScriptCore_JavaScriptCore.pri,v 1.1 2014/12/30 17:23:47 adam Exp $

* Make conditional for Unix

--- src/qt/qtwebkit/Source/JavaScriptCore/JavaScriptCore.pri.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Source/JavaScriptCore/JavaScriptCore.pri
@@ -42,6 +42,6 @@ wince* {
     INCLUDEPATH += $$SOURCE_DIR/os-win32
 }
 
-linux-*:if(isEqual(QT_ARCH, "i386")|isEqual(QT_ARCH, "x86_64")) {
+unix-*:if(isEqual(QT_ARCH, "i386")|isEqual(QT_ARCH, "x86_64")) {
     INCLUDEPATH += $$SOURCE_DIR/disassembler/udis86
 }
