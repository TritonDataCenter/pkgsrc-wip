$NetBSD$

Don't redefine bswap32().

--- source/mupen64plus-video-glide64mk2/src/Glide64/Util.h.orig	2013-07-04 00:28:17.000000000 +0000
+++ source/mupen64plus-video-glide64mk2/src/Glide64/Util.h
@@ -90,12 +90,12 @@ float ScaleZ(float z);
 			lx = lc; \
 		}
 
-#if defined(__GNUC__)
+#if defined(__GNUC__) && !defined(_SYS_BSWAP_H_)
   #define bswap32(x) __builtin_bswap32(x)
 #elif defined(_MSC_VER) && (defined(_M_IX86) || defined(_M_X64))
   #include <stdlib.h>
   #define bswap32(x) _byteswap_ulong(x)
-#else
+#elif !defined(__NetBSD__)
 static inline uint32_t bswap32(uint32_t val)
 {
 	return (((val & 0xff000000) >> 24) |
