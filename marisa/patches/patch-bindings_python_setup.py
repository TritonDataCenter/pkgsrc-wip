$NetBSD$

--- bindings/python/setup.py.orig	2011-05-14 05:20:52.000000000 +0000
+++ bindings/python/setup.py
@@ -5,5 +5,6 @@ marisa_module = Extension("_marisa",
                           libraries=["marisa"])
 
 setup(name = "marisa",
+      version = "0.2.4",
       ext_modules = [marisa_module],
       py_modules = ["marisa"])
