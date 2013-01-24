$NetBSD$

* Add NetBSD support

--- pylib/gyp/common.py.orig	2012-12-15 10:46:11.000000000 +0000
+++ pylib/gyp/common.py
@@ -380,6 +380,8 @@ def GetFlavor(params):
     return 'freebsd'
   if sys.platform.startswith('aix'):
     return 'aix'
+  if sys.platform.startswith('netbsd'):
+    return 'netbsd'
 
   return 'linux'
 
