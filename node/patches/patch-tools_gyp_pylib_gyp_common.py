$NetBSD$

Add support for NetBSD.

--- tools/gyp/pylib/gyp/common.py.orig	2013-03-11 00:36:28.000000000 +0000
+++ tools/gyp/pylib/gyp/common.py
@@ -378,6 +378,8 @@ def GetFlavor(params):
     return 'solaris'
   if sys.platform.startswith('freebsd'):
     return 'freebsd'
+  if sys.platform.startswith('netbsd'):
+    return 'netbsd'
   if sys.platform.startswith('dragonfly'):
     return 'dragonflybsd'
 
