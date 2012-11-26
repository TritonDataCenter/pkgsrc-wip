$NetBSD$

Add a separate $PREFIX to the install paths, as qmake only supports
a single $INSTALL_ROOT prefix. By setting $INSTALL_ROOT to $DESTDIR
this enables DESTDIR support and fixes the library paths.

--- src/libs/qtcomponents/styleitem/styleitem.pro.orig	2012-08-08 13:47:06.000000000 +0000
+++ src/libs/qtcomponents/styleitem/styleitem.pro
@@ -33,6 +33,6 @@ SOURCES += qtmenu.cpp \
            qwheelarea.cpp
 
 !macx {
-    target.path = /$${IDE_LIBRARY_BASENAME}/qtcreator/qtcomponents/plugin
+    target.path = $$(PREFIX)/lib/qtcreator/qtcomponents/plugin
     INSTALLS += target
 }
