$NetBSD: patch-Source_WebKit_qt_examples_platformplugin_platformplugin.pro,v 1.1 2014/12/30 17:23:48 adam Exp $

* Fix unprivileged build,
  https://bugs.webkit.org/show_bug.cgi?id=117077

--- src/qt/qtwebkit/Source/WebKit/qt/examples/platformplugin/platformplugin.pro.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Source/WebKit/qt/examples/platformplugin/platformplugin.pro
@@ -20,7 +20,8 @@ load(mobilityconfig, true)
     }
 }
 
-DESTDIR = $$[QT_INSTALL_PLUGINS]/webkit
+target.path = $$[QT_INSTALL_PLUGINS]/webkit
+INSTALLS += target
 
 SOURCES += \
     WebPlugin.cpp \
