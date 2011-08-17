$NetBSD$

Porper time() prototype.

--- relay/history.c.orig	1993-03-13 07:22:02.000000000 +0000
+++ relay/history.c
@@ -17,6 +17,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>		/* for memcpy */
+#include <time.h>
 #include <errno.h>
 #include "fixerrno.h"
 #include <sys/types.h>
