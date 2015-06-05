$NetBSD$

Corrects a header path.

--- src/application.c.orig	2014-03-07 11:39:43.000000000 +0000
+++ src/application.c
@@ -27,7 +27,7 @@
 #include "util.h"
 #include "scripts.h"
 #include "application.h"
-#include <gio-unix-2.0/gio/gdesktopappinfo.h>
+#include <gio/gdesktopappinfo.h>
 
 static gboolean application_parse_option(const gchar *, const gchar *, gpointer , GError **);
 static void application_execute_args(char **);
