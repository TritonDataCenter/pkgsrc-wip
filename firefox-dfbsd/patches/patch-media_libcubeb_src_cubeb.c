$NetBSD: patch-media_libcubeb_src_cubeb.c,v 1.4 2016/06/16 12:08:21 ryoon Exp $

* Support OSS audio

--- media/libcubeb/src/cubeb.c.orig	2016-04-15 16:57:46.000000000 +0000
+++ media/libcubeb/src/cubeb.c
@@ -60,6 +60,9 @@ int audiotrack_init(cubeb ** context, ch
 #if defined(USE_KAI)
 int kai_init(cubeb ** context, char const * context_name);
 #endif
+#if defined(USE_OSS)
+int oss_init(cubeb ** context, char const * context_name);
+#endif
 
 
 int
@@ -152,6 +155,9 @@ cubeb_init(cubeb ** context, char const 
 #if defined(USE_KAI)
     kai_init,
 #endif
+#if defined(USE_OSS)
+    oss_init,
+#endif
   };
   int i;
 
