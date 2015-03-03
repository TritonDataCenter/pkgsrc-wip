$NetBSD$

--- src/gallium/winsys/svga/drm/vmw_screen_ioctl.c.orig	2015-02-27 23:26:50.000000000 +0000
+++ src/gallium/winsys/svga/drm/vmw_screen_ioctl.c
@@ -48,6 +48,10 @@
 
 #include "os/os_mman.h"
 
+#if defined(__NetBSD__)
+/* XXX: to get ERESTART, although I don't think our drm ioctls use it, check with xsrc */
+#define _KMEMUSER
+#endif
 #include <errno.h>
 #include <unistd.h>
 
