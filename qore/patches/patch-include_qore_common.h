$NetBSD$
* fixes build on FreeBSD
--- include/qore/common.h.orig	2014-03-15 20:32:27.000000000 +0000
+++ include/qore/common.h
@@ -33,6 +33,7 @@
 #include <strings.h>
 #include <stdarg.h>
 #include <stddef.h>
+#include <stdlib.h>
 
 #include <string>
 #include <functional>
