$NetBSD$

Another missing prototype.

--- unix/x0vncserver/Image.cxx.orig	2006-05-15 16:56:20.000000000 +0000
+++ unix/x0vncserver/Image.cxx
@@ -21,6 +21,7 @@
 
 
 #include <stdio.h>
+#include <stdlib.h>
 #include <sys/types.h>
 #include <sys/ipc.h>
 #include <sys/shm.h>
