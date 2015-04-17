$NetBSD$

Fix endian detection on NetBSD.

--- src/gallium/include/pipe/p_config.h.orig	2015-01-17 14:53:45.000000000 +0000
+++ src/gallium/include/pipe/p_config.h
@@ -157,7 +157,7 @@
 # define PIPE_ARCH_BIG_ENDIAN
 #endif
 
-#elif defined(__OpenBSD__)
+#elif defined(__OpenBSD__) || defined(__NetBSD__)
 #include <sys/types.h>
 #include <machine/endian.h>
 
