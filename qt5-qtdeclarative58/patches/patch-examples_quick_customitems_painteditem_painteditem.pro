$NetBSD: patch-examples_quick_customitems_painteditem_painteditem.pro,v 1.1 2014/12/30 17:23:46 adam Exp $

* Avoid conflict between "cp -R" and "libtool --mode=install"

--- examples/quick/customitems/painteditem/painteditem.pro.orig	2013-11-27 01:01:54.000000000 +0000
+++ examples/quick/customitems/painteditem/painteditem.pro
@@ -11,7 +11,7 @@ SOURCES += textballoon.cpp
 
 RESOURCES += painteditem.qrc
 
-DESTDIR = TextBalloonPlugin
+DESTDIR = TextBalloonPlugin_DEST
 
 target.path = $$[QT_INSTALL_EXAMPLES]/quick/customitems/painteditem/TextBalloonPlugin
 qmldir.files = TextBalloonPlugin/qmldir
