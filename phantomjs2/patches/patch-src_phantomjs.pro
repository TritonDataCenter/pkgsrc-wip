$NetBSD$

Fix plugin linking.
--- src/phantomjs.pro.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/phantomjs.pro
@@ -68,7 +68,7 @@ include(mongoose/mongoose.pri)
 include(linenoise/linenoise.pri)
 include(qcommandline/qcommandline.pri)
 
-linux*|mac|openbsd* {
+linux*|mac|netbsd*|openbsd*|solaris* {
     INCLUDEPATH += breakpad/src
 
     SOURCES += breakpad/src/client/minidump_file_writer.cc \
@@ -131,3 +131,7 @@ win32-msvc* {
 openbsd* {
     LIBS += -L/usr/X11R6/lib
 }
+
+solaris* {
+    LIBS += -lnsl -lsocket
+}
