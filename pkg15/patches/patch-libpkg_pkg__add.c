$NetBSD$

--- libpkg/pkg_add.c.orig	2015-04-05 08:31:08.000000000 +0000
+++ libpkg/pkg_add.c
@@ -42,10 +42,10 @@
 #include "private/pkg.h"
 #include "private/pkgdb.h"
 
-#if defined(__APPLE__)
-#define NOCHANGESFLAGS	(UF_IMMUTABLE | UF_APPEND | SF_IMMUTABLE | SF_APPEND)
-#else
+#if defined(UF_NOUNLINK)
 #define NOCHANGESFLAGS	(UF_IMMUTABLE | UF_APPEND | UF_NOUNLINK | SF_IMMUTABLE | SF_APPEND | SF_NOUNLINK)
+#else
+#define NOCHANGESFLAGS	(UF_IMMUTABLE | UF_APPEND | SF_IMMUTABLE | SF_APPEND)
 #endif
 
 
