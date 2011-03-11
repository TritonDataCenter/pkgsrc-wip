$NetBSD$

* Support NetBSD

--- setup.py.orig	2011-03-10 19:40:39.000000000 +0000
+++ setup.py
@@ -83,7 +83,7 @@ if 'debian' in current_dist or 'ubuntu' 
         ('share/pixmaps', ['icons.in/taskcoach.png'])]
 
 system = platform.system()
-if system == 'Linux':
+if (system == 'Linux') or (system == 'NetBSD'):
     setupOptions['package_data'] = {'taskcoachlib': ['bin.in/linux/_pysyncml.so']}
 elif system == 'Windows':
     setupOptions['scripts'].append('taskcoach.pyw')
