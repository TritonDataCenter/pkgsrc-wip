$NetBSD: patch-Source_WebKit2_Target.pri,v 1.1 2014/12/30 17:23:48 adam Exp $

* Fix build from the lack of many headers, this is ugly hack
* Build libWebKit2 with libtool
* Install libWebKit2 libraries

--- Source/WebKit2/Target.pri.orig	2013-11-27 01:01:51.000000000 +0000
+++ Source/WebKit2/Target.pri
@@ -7,11 +7,16 @@
 TEMPLATE = lib
 TARGET = WebKit2
 
+QMAKE_EXTRA_TARGETS += fwheader_generator
+
 include(WebKit2.pri)
 
 WEBKIT += wtf javascriptcore webcore
 
-CONFIG += staticlib
+#CONFIG += staticlib
+
+target.path = $$[QT_INSTALL_LIBS]
+INSTALLS += target
 
 RESOURCES += $$PWD/WebKit2.qrc
 
