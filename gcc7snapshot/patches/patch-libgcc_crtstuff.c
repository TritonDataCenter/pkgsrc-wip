$NetBSD: patch-libgcc_crtstuff.c,v 1.3 2014/11/04 09:09:28 keckhardt Exp $

--- libgcc/crtstuff.c.orig	2014-09-22 00:49:01.000000000 +0000
+++ libgcc/crtstuff.c
@@ -81,7 +81,8 @@ call_ ## FUNC (void)					\
 #endif
 
 #if defined(TARGET_DL_ITERATE_PHDR) && \
-   (defined(__DragonFly__) || defined(__FreeBSD__))
+   (defined(__DragonFly__) || defined(__FreeBSD__) || \
+   defined(__NetBSD__) || defined(__OpenBSD__))
 #define BSD_DL_ITERATE_PHDR_AVAILABLE
 #endif
  
