$NetBSD$

--- lib/sanitizer_common/sanitizer_linux.h.orig	2017-07-16 22:40:10.000000000 +0000
+++ lib/sanitizer_common/sanitizer_linux.h
@@ -14,7 +14,7 @@
 #define SANITIZER_LINUX_H
 
 #include "sanitizer_platform.h"
-#if SANITIZER_FREEBSD || SANITIZER_LINUX
+#if SANITIZER_FREEBSD || SANITIZER_LINUX || SANITIZER_NETBSD
 #include "sanitizer_common.h"
 #include "sanitizer_internal_defs.h"
 #include "sanitizer_posix.h"
@@ -128,5 +128,5 @@ ALWAYS_INLINE uptr *get_android_tls_ptr(
 
 }  // namespace __sanitizer
 
-#endif  // SANITIZER_FREEBSD || SANITIZER_LINUX
+#endif  // SANITIZER_FREEBSD || SANITIZER_LINUX || SANITIZER_NETBSD
 #endif  // SANITIZER_LINUX_H
