$NetBSD$

Build similar to FreeBSD, using the netbsd* qmake makespec
that is defined for all pkgsrc targets.

--- src/libs/extensionsystem/extensionsystem.pro.orig	2012-08-08 13:47:06.000000000 +0000
+++ src/libs/extensionsystem/extensionsystem.pro
@@ -4,7 +4,7 @@ DEFINES += EXTENSIONSYSTEM_LIBRARY
 include(../../qtcreatorlibrary.pri)
 include(extensionsystem_dependencies.pri)
 
-unix:!macx:!freebsd*:LIBS += -ldl
+unix:!macx:!freebsd*:!netbsd*:LIBS += -ldl
 
 !isEmpty(vcproj) {
     DEFINES += IDE_TEST_DIR=\"$$IDE_SOURCE_TREE\"
