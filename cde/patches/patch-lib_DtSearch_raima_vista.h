$NetBSD$

--- lib/DtSearch/raima/vista.h.orig	2012-09-28 20:40:14.000000000 +0000
+++ lib/DtSearch/raima/vista.h
@@ -86,7 +86,7 @@
 # define __SVR4_I386_ABI_L1__
 #endif
 #include <limits.h>	/* pickup WORD_BIT, LONG_BIT */
-#if defined(linux) || defined(__FreeBSD__)
+#if defined(linux) || defined(CSRG_BASED)
 # undef __SVR4_I386_ABI_L1__
 # ifndef WORD_BIT
 # define WORD_BIT 32
