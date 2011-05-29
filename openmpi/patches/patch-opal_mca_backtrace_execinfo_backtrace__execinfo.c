$NetBSD$

--- opal/mca/backtrace/execinfo/backtrace_execinfo.c.orig	2011-05-25 01:00:07.000000000 +0000
+++ opal/mca/backtrace/execinfo/backtrace_execinfo.c
@@ -19,7 +19,9 @@
 #include "opal_config.h"
 
 #include <stdio.h>
+#if !defined(__NetBSD__)
 #include <execinfo.h>
+#endif
 
 #include "opal/constants.h"
 #include "opal/mca/backtrace/backtrace.h"
