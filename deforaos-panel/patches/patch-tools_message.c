$NetBSD$

Build fix for Gtk+ 3.0

--- tools/message.c.orig	2013-02-04 22:23:50.000000000 +0000
+++ tools/message.c
@@ -20,6 +20,9 @@
 #include <stdlib.h>
 #include <stdio.h>
 #include <Desktop.h>
+#if GTK_CHECK_VERSION(3, 0, 0)
+# include <gtk/gtkx.h>
+#endif
 #include "../include/Panel.h"
 
 
