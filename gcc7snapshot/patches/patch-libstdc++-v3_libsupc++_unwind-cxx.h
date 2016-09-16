$NetBSD: patch-libstdc++-v3_libsupc++_unwind-cxx.h,v 1.1 2014/10/19 10:50:57 keckhardt Exp $

--- libstdc++-v3/libsupc++/unwind-cxx.h.orig	2013-03-19 17:04:44.000000000 +0000
+++ libstdc++-v3/libsupc++/unwind-cxx.h
@@ -38,6 +38,7 @@
 #include <cxxabi.h>
 
 #ifdef _GLIBCXX_HAVE_SYS_SDT_H
+#include <cstdlib>
 #include <sys/sdt.h>
 /* We only want to use stap probes starting with v3.  Earlier versions
    added too much startup cost.  */
