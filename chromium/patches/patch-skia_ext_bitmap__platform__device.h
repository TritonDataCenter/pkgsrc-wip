$NetBSD$

--- skia/ext/bitmap_platform_device.h.orig	2011-04-13 08:01:18.000000000 +0000
+++ skia/ext/bitmap_platform_device.h
@@ -13,7 +13,8 @@
 #include "skia/ext/bitmap_platform_device_win.h"
 #elif defined(__APPLE__)
 #include "skia/ext/bitmap_platform_device_mac.h"
-#elif defined(__linux__) || defined(__FreeBSD__) || defined(__OpenBSD__)
+#elif defined(__linux__) || defined(__DragonFly__) || defined(__FreeBSD__) || \
+      defined(__NetBSD__) || defined(__OpenBSD__)
 #include "skia/ext/bitmap_platform_device_linux.h"
 #endif
 
