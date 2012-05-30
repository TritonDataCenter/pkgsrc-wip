$NetBSD$

--- vfe/unix/vfeplatform.cpp.orig	2011-01-02 13:43:05.000000000 +0000
+++ vfe/unix/vfeplatform.cpp
@@ -106,6 +106,13 @@
 # include <sys/time.h>
 #endif
 
+/* XXX add configure test instead */
+#define HAVE_SYS_WAIT_H
+
+#ifdef HAVE_SYS_WAIT_H
+# include <sys/wait.h>
+#endif
+
 #include "vfe.h"
 #include "unixoptions.h"
 
