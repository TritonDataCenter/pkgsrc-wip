$NetBSD: patch-src_tests_once-test.c,v 1.1 2013/12/16 19:00:03 asau Exp $

--- src/tests/once-test.c~	2014-01-19 23:46:10.000000000 +0900
+++ src/tests/once-test.c	2014-01-19 23:52:39.000000000 +0900
@@ -27,6 +27,11 @@
 
 #include <check.h>
 
+#if defined(__FreeBSD__)
+#include <sys/param.h>
+#include <sys/cpuset.h>
+#endif
+
 #include <pulsecore/thread.h>
 #include <pulsecore/once.h>
 #include <pulsecore/log.h>
