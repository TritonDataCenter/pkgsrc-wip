$NetBSD: patch-Source_WTF_wtf_ThreadIdentifierDataPthreads.cpp,v 1.1 2014/12/30 17:23:47 adam Exp $

* Add NetBSD support

--- Source/WTF/wtf/ThreadIdentifierDataPthreads.cpp.orig	2013-11-27 01:01:20.000000000 +0000
+++ Source/WTF/wtf/ThreadIdentifierDataPthreads.cpp
@@ -39,6 +39,12 @@
 #if OS(ANDROID) || OS(HURD)
 // PTHREAD_KEYS_MAX is not defined in bionic nor in Hurd, so explicitly define it here.
 #define PTHREAD_KEYS_MAX 1024
+#elif OS(NETBSD)
+#include <limits.h>
+// PTHREAD_KEYS_MAX is not defined in 5.x
+#ifndef PTHREAD_KEYS_MAX
+#define PTHREAD_KEYS_MAX 256
+#endif
 #else
 #include <limits.h>
 #endif
