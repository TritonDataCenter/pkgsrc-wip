$NetBSD$

NetBSD build fix.

--- include/endian_compat.h.orig	2014-04-26 18:59:49.000000000 +0000
+++ include/endian_compat.h
@@ -7,6 +7,8 @@
 #define le32toh(x) CFSwapInt32LittleToHost(x)
 #define htole16(x) CFSwapInt16HostToLittle(x)
 #define le16toh(x) CFSwapInt16LittleToHost(x)
+#elif defined(__NetBSD__)
+#include <sys/endian.h>
 #else
 #include <endian.h>
 #endif
