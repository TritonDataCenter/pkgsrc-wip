$NetBSD$

Fix header location for pkgsrc.

--- plugins/sysinfo/parse.c.orig	2014-06-01 16:11:26.000000000 +0000
+++ plugins/sysinfo/parse.c
@@ -28,7 +28,7 @@
 #include <time.h>
 #include <dirent.h>
 #include <sys/types.h>
-#include <pci/header.h>
+#include <pciutils/header.h>
 
 #include "pci.h"
 #include "match.h"
