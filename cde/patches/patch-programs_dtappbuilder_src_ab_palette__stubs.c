$NetBSD$

--- programs/dtappbuilder/src/ab/palette_stubs.c.orig	2012-09-28 20:54:19.000000000 +0000
+++ programs/dtappbuilder/src/ab/palette_stubs.c
@@ -140,7 +140,7 @@ static void 	register_palette_info(
 **                                                                      **
 **************************************************************************/
 
-#if !defined(linux) && !defined(__FreeBSD__)
+#if !defined(linux) && !defined(CSRG_BASED)
 extern char     *sys_errlist[];
 #endif
 
