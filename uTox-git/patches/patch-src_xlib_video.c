$NetBSD$

The volatile macro is used in {amd64,i386,machine}/mcontext.h on NetBSD.

--- src/xlib/video.c.orig	2015-12-29 21:26:38.000000000 +0000
+++ src/xlib/video.c
@@ -151,6 +151,10 @@ _Bool video_init(void *handle) {
     if(isdesktop(handle)) {
         utox_v4l_fd = -1;
 
+#ifndef volatile
+#define volatile(x) (*((volatile typeof(x)*)&x))
+#endif
+
         video_x = volatile(grabx);
         video_y = volatile(graby);
         video_width = volatile(grabpx);
