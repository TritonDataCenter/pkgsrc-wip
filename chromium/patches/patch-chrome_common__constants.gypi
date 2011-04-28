$NetBSD$

--- chrome/common_constants.gypi.orig	2011-04-13 08:01:59.000000000 +0000
+++ chrome/common_constants.gypi
@@ -67,7 +67,7 @@
         '../base/base.gyp:base',
       ],
       'conditions': [
-        ['OS=="linux" or OS=="freebsd" or OS=="openbsd"', {
+        ['OS=="linux" or OS=="dragonfly" or OS=="freebsd" or OS=="netbsd" or OS=="openbsd"', {
           'dependencies': ['../build/linux/system.gyp:gtk'],
         }],
       ],
