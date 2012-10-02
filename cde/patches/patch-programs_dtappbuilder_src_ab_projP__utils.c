$NetBSD$

--- programs/dtappbuilder/src/ab/projP_utils.c.orig	2012-09-28 20:56:22.000000000 +0000
+++ programs/dtappbuilder/src/ab/projP_utils.c
@@ -93,7 +93,7 @@ static void     mult_module_selected(
 **                                                                      **
 **************************************************************************/
 
-#if !defined(linux) && !defined(__FreeBSD__)
+#if !defined(linux) && !defined(CSRG_BASED)
 extern char	*sys_errlist[];
 #endif
 char		Buf[MAXPATHLEN];	/* Work buffer */
