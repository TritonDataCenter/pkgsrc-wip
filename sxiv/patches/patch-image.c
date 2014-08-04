$NetBSD$

Fix build with giflib >= 5.1.0.

--- image.c.orig	2014-04-24 18:40:26.000000000 +0000
+++ image.c
@@ -278,7 +278,11 @@ bool img_load_gif(img_t *img, const file
 		}
 	} while (rec != TERMINATE_RECORD_TYPE);
 
+#if defined(GIFLIB_MAJOR) && GIFLIB_MAJOR >= 5 && GIFLIB_MINOR >= 1
+	DGifCloseFile(gif, NULL);
+#else
 	DGifCloseFile(gif);
+#endif
 
 	if (err && !file->loaded)
 		warn("corrupted gif file: %s", file->name);
