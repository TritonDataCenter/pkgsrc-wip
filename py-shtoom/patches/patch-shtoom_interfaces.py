$NetBSD$

--- shtoom/interfaces.py.orig	2004-02-21 06:55:59.000000000 +0000
+++ shtoom/interfaces.py
@@ -1,6 +1,6 @@
 # Copyright (C) 2004 Anthony Baxter
 
-from twisted.python.components import Interface
+from zope.interface import Interface
 
 
 class UI(Interface):
