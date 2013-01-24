$NetBSD$

* Add NetBSD 5 and 6 target

--- gyptest.py.orig	2012-12-15 10:47:22.000000000 +0000
+++ gyptest.py
@@ -212,6 +212,9 @@ def main(argv=None):
     format_list = {
       'freebsd7': ['make'],
       'freebsd8': ['make'],
+      'freebsd9': ['make'],
+      'netbsd5': ['make'],
+      'netbsd6': ['make'],
       'cygwin':   ['msvs'],
       'win32':    ['msvs', 'ninja'],
       'linux2':   ['make', 'ninja'],
