$NetBSD: patch-mono_utils_mono-compiler.h,v 1.3 2014/11/30 08:40:51 spz Exp $

Make sure that TLS variables are actually emitted, since the compiler
doesn't see all references.

--- mono/utils/mono-compiler.h.orig	2014-10-04 09:27:43.000000000 +0000
+++ mono/utils/mono-compiler.h
@@ -36,7 +36,7 @@
 #if defined(PIC)
 
 #ifdef PIC_INITIAL_EXEC
-#define MONO_TLS_FAST __attribute__((tls_model("initial-exec")))
+#define MONO_TLS_FAST __attribute__((tls_model("initial-exec"), used))
 #else
 #if defined (__powerpc__)
 /* local dynamic requires a call to __tls_get_addr to look up the
@@ -48,18 +48,18 @@
    For now we will disable this. */
 #define MONO_TLS_FAST
 #else
-#define MONO_TLS_FAST __attribute__((tls_model("local-dynamic")))
+#define MONO_TLS_FAST __attribute__((tls_model("local-dynamic"), used))
 #endif
 #endif
 
 #else
 
-#define MONO_TLS_FAST __attribute__((tls_model("local-exec")))
+#define MONO_TLS_FAST __attribute__((tls_model("local-exec"), used))
 
 #endif
 
 #else
-#define MONO_TLS_FAST 
+#define MONO_TLS_FAST
 #endif
 
 #if defined(__GNUC__) && defined(__i386__)
