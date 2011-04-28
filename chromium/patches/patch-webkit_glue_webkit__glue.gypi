$NetBSD$

--- webkit/glue/webkit_glue.gypi.orig	2011-04-13 08:01:08.000000000 +0000
+++ webkit/glue/webkit_glue.gypi
@@ -466,7 +466,7 @@
       # own hard dependencies.
       'hard_dependency': 1,
       'conditions': [
-        ['OS=="linux" or OS=="freebsd" or OS=="openbsd" or OS=="solaris"', {
+        ['OS=="linux" or OS=="dragonfly" or OS=="freebsd" or OS=="netbsd" or OS=="openbsd" or OS=="solaris"', {
           'dependencies': [
             '<(DEPTH)/build/linux/system.gyp:gtk',
           ],
