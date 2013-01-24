$NetBSD$

--- gui/qt_libraries.gypi.orig	2012-08-31 05:36:43.000000000 +0000
+++ gui/qt_libraries.gypi
@@ -84,7 +84,7 @@
         '$(SDKROOT)/System/Library/Frameworks/Carbon.framework',
       ]
     }],
-    ['OS=="linux"', {
+    ['OS=="linux" or OS=="netbsd"', {
       'conditions': [
         ['qt_dir', {
           'libraries': [
