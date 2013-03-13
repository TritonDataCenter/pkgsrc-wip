$NetBSD$

Add support for NetBSD.

--- deps/uv/common.gypi.orig	2013-03-11 00:36:28.000000000 +0000
+++ deps/uv/common.gypi
@@ -129,7 +129,7 @@
           }]
         ]
       }],
-      [ 'OS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris"', {
+      [ 'OS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris" or OS=="netbsd"', {
         'cflags': [ '-Wall' ],
         'cflags_cc': [ '-fno-rtti', '-fno-exceptions' ],
         'conditions': [
