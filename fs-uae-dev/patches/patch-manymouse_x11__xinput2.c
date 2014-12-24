$NetBSD$

Include proper header file.

--- manymouse/x11_xinput2.c.orig	2014-09-23 10:39:54.000000000 +0000
+++ manymouse/x11_xinput2.c
@@ -25,6 +25,7 @@
 #include <stdlib.h>
 #include <string.h>
 #include <dlfcn.h>
+#include <sys/select.h>
 #include <X11/extensions/XInput2.h>
 
 /* 32 is good enough for now. */
