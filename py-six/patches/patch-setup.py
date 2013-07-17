$NetBSD$

Replace the setup import to install the package with
option "--single-version-externally-managed"
--- setup.py.orig	2012-05-20 06:35:39.000000000 +0000
+++ setup.py
@@ -1,4 +1,4 @@
-from distutils.core import setup
+from setuptools import setup
 
 import six
 
