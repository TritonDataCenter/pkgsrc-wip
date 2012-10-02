$NetBSD$

--- programs/dtappbuilder/src/ab/proj_utils.c.orig	2012-09-28 20:57:20.000000000 +0000
+++ programs/dtappbuilder/src/ab/proj_utils.c
@@ -180,7 +180,7 @@ static void	notify_proj_save_as_okCB(
 **                                                                      **
 **************************************************************************/
 
-#if !defined(linux) && !defined(__FreeBSD__)
+#if !defined(linux) && !defined(CSRG_BASED)
 extern char             *sys_errlist[];
 #endif
 
