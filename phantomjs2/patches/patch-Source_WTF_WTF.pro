$NetBSD: patch-Source_WTF_WTF.pro,v 1.1 2014/12/30 17:23:47 adam Exp $

* Install libWTF shared library

--- src/qt/qtwebkit/Source/WTF/WTF.pro.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Source/WTF/WTF.pro
@@ -9,6 +9,8 @@ TARGET = WTF
 include(WTF.pri)
 
 CONFIG += staticlib optimize_full
+target.path = $$[QT_INSTALL_LIBS]
+INSTALLS += target
 
 VPATH += $$PWD/wtf
 
