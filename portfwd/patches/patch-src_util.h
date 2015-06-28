$NetBSD$
Include path adjustment

--- src/util.h.orig	2015-06-27 14:35:16.000000000 -0700
+++ src/util.h	2015-06-27 14:35:45.000000000 -0700
@@ -11,7 +11,7 @@
 #include <sys/types.h>
 #include <unistd.h>
 
-#include "config.h"
+#include "../config.h"
 
 extern int verbose_mode;
 
