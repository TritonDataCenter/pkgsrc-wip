$NetBSD$

--- setup.py.orig	2011-02-17 18:48:51.000000000 +0000
+++ setup.py
@@ -48,7 +48,7 @@ for root, dirs, files in os.walk('locale
             [os.path.join(root, f)]
         ))
 manpages = set()
-data_files = [('share/man/man1', manpages)]
+data_files = [('man/man1', manpages)]
 
 class build_doc(distutils_build):
 
