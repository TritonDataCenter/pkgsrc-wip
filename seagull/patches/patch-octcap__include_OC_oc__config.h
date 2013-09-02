$NetBSD$

Add minimal NetBSD support.

--- octcap_include/OC/oc_config.h.orig	2010-10-27 12:30:16.000000000 +0000
+++ octcap_include/OC/oc_config.h
@@ -77,6 +77,9 @@
 #include <linux/module.h>
 #endif /* MODULE */
 
+#elif defined(__NetBSD__)
+#include <sys/endian.h>
+
 #elif defined(__hpux) && !defined(_KERNEL)
 
 #include <sys/stdsyms.h>
