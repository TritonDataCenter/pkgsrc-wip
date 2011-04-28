$NetBSD$

--- tools/gyp/pylib/gyp/__init__.py.orig	2011-04-13 08:13:20.000000000 +0000
+++ tools/gyp/pylib/gyp/__init__.py
@@ -313,9 +313,11 @@ def main(args):
       options.formats = [ {'darwin':   'xcode',
                            'win32':    'msvs',
                            'cygwin':   'msvs',
+                           'dragonfly2': 'make',
                            'freebsd7': 'make',
                            'freebsd8': 'make',
                            'linux2':   'make',
+                           'netbsd5':  'make',
                            'openbsd4': 'make',
                            'sunos5':   'make',}[sys.platform] ]
 
