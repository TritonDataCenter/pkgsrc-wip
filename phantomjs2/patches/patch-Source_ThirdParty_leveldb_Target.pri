$NetBSD: patch-Source_ThirdParty_leveldb_Target.pri,v 1.1 2014/12/30 17:23:47 adam Exp $

Build as shared library.

--- src/qt/qtwebkit/Source/ThirdParty/leveldb/Target.pri.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Source/ThirdParty/leveldb/Target.pri
@@ -10,6 +10,8 @@ TARGET = leveldb
 include(leveldb.pri)
 
 CONFIG += staticlib
+target.path = $$[QT_INSTALL_LIBS]
+INSTALLS += target
 
 HEADERS += \
     db/builder.h \
