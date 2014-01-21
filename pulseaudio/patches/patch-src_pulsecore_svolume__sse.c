$NetBSD: patch-src_pulsecore_svolume__sse.c,v 1.1 2013/10/24 17:48:53 jperkin Exp $

Avoid bad register usage on OSX 32-bit.

--- src/pulsecore/svolume_sse.c~	2014-01-19 23:46:10.000000000 +0900
+++ src/pulsecore/svolume_sse.c	2014-01-19 23:50:48.000000000 +0900
@@ -255,7 +255,7 @@ static void pa_volume_s16re_sse2(int16_t
 #endif /* defined (__i386__) || defined (__amd64__) */
 
 void pa_volume_func_init_sse(pa_cpu_x86_flag_t flags) {
-#if defined (__i386__) || defined (__amd64__)
+#if (defined (__i386__) && !defined(__APPLE__)) || defined (__amd64__)
     if (flags & PA_CPU_X86_SSE2) {
         pa_log_info("Initialising SSE2 optimized volume functions.");
 
