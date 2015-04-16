$NetBSD$

--- src/gallium/drivers/nouveau/nv50/nv84_video.c.orig	2015-03-21 00:51:18.000000000 +0000
+++ src/gallium/drivers/nouveau/nv50/nv84_video.c
@@ -34,7 +34,11 @@
 static int
 nv84_copy_firmware(const char *path, void *dest, ssize_t len)
 {
+#ifdef O_CLOEXEC
    int fd = open(path, O_RDONLY | O_CLOEXEC);
+#else
+   int fd = open(path, O_RDONLY);
+#endif
    ssize_t r;
    if (fd < 0) {
       fprintf(stderr, "opening firmware file %s failed: %m\n", path);
