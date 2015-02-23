$NetBSD$

SunOS needs C99.
--- src/mongoose/mongoose.pri.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/mongoose/mongoose.pri
@@ -5,3 +5,4 @@ SOURCES += mongoose.c
 HEADERS += mongoose.h
 linux*:LIBS += -ldl
 win32:LIBS += -lWs2_32
+solaris*:QMAKE_CFLAGS_RELEASE += --std=c99
