$NetBSD$

--- net/third_party/nss/ssl.gyp.orig	2011-04-13 08:01:16.000000000 +0000
+++ net/third_party/nss/ssl.gyp
@@ -4,7 +4,7 @@
 
 {
   'conditions': [
-    [ 'OS == "linux" or OS == "freebsd" or OS == "openbsd"', {
+    [ 'OS == "linux" or OS == "dragonfly" or OS == "freebsd" or OS == "netbsd" or OS == "openbsd"', {
       'conditions': [
         ['sysroot!=""', {
           'variables': {
@@ -104,7 +104,7 @@
             ],
           },
         ],
-        [ 'OS == "linux" or OS == "freebsd" or OS == "openbsd"', {
+        [ 'OS == "linux" or OS == "dragonfly" or OS == "freebsd" or OS == "netbsd" or OS == "openbsd"', {
           'defines': [
             # These macros are needed only for compiling the files in
             # ssl/bodge.
