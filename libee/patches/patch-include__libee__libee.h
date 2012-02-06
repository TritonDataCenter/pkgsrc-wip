$NetBSD$

Need sys/types.h for time_t on SunOS.
--- include/libee/libee.h.orig	2011-04-13 08:08:38.000000000 +0000
+++ include/libee/libee.h
@@ -153,6 +153,7 @@
 #ifndef LIBEE_H_INCLUDED
 #define	LIBEE_H_INCLUDED
 #include <stdlib.h>	/* we need size_t */
+#include <sys/types.h>
 #include <libestr.h>
 #include "libee/obj.h"
 #include "libee/ctx.h"
