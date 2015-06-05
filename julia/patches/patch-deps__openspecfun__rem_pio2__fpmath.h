$NetBSD$

--- deps/openspecfun/rem_pio2/fpmath.h-orig	2015-05-18 03:22:28.000000000 +0000
+++ deps/openspecfun/rem_pio2/fpmath.h
@@ -71,6 +71,12 @@
 #  define _FPMATH_LITTLE_ENDIAN  _LITTLE_ENDIAN
 #  define _FPMATH_BIG_ENDIAN     _BIG_ENDIAN
 #  define _FPMATH_BYTE_ORDER     _BYTE_ORDER
+// NetBSD
+#elif defined(__NetBSD__)
+#  include <machine/endian.h>
+#  define _FPMATH_LITTLE_ENDIAN  _LITTLE_ENDIAN
+#  define _FPMATH_BIG_ENDIAN     _BIG_ENDIAN
+#  define _FPMATH_BYTE_ORDER     _BYTE_ORDER
 // Windows
 #elif defined(_WIN32)
 #  define _FPMATH_LITTLE_ENDIAN 1234
