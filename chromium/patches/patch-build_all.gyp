$NetBSD$

--- build/all.gyp.orig	2011-04-13 08:01:33.000000000 +0000
+++ build/all.gyp
@@ -87,7 +87,7 @@
             }],
           ],
         }],
-        ['OS=="linux" or OS=="freebsd" or OS=="openbsd"', {
+        ['OS=="linux" or OS=="dragonfly" or OS=="freebsd" or OS=="netbsd" or OS=="openbsd"', {
           'dependencies': [
             '../tools/gtk_clipboard_dump/gtk_clipboard_dump.gyp:*',
             '../tools/xdisplaycheck/xdisplaycheck.gyp:*',
