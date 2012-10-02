$NetBSD$

Fixed build (wrong includes)

--- src/button.c.orig	2007-08-06 09:19:10.000000000 +0000
+++ src/button.c
@@ -16,8 +16,8 @@
 #include "config.h"
 #include <string.h>
 #include <stdio.h>
-#include <glib/gmessages.h>
-#include <gtk/gtkimage.h>
+#include <glib.h>
+#include <gtk/gtk.h>
 #include "fakedev.h"
 
 FakeButton *
