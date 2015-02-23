$NetBSD: patch-src_corelib_io_io.pri,v 1.1 2014/12/30 17:23:46 adam Exp $

* Add NetBSD support
* Add DragonFly support

--- src/qt/qtbase/src/corelib/io/io.pri.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtbase/src/corelib/io/io.pri
@@ -160,7 +160,7 @@ win32 {
         }
 
         !nacl {
-            freebsd-*|mac|darwin-*|openbsd-*:{
+            freebsd-*|mac|darwin-*|openbsd-*|netbsd-*|dragonfly-*:{
                 SOURCES += io/qfilesystemwatcher_kqueue.cpp
                 HEADERS += io/qfilesystemwatcher_kqueue_p.h
             }
