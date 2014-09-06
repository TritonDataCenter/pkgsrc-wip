$NetBSD$

Fix path to glib2 headers.

--- xpra/x11/gtk_x11/gdk_bindings.pyx.orig	2014-08-19 08:19:09.000000000 +0000
+++ xpra/x11/gtk_x11/gdk_bindings.pyx
@@ -65,7 +65,7 @@ init_pygtk()
 # GObject
 ###################################
 
-cdef extern from "glib-2.0/glib-object.h":
+cdef extern from "glib-object.h":
     ctypedef struct cGObject "GObject":
         pass
 
