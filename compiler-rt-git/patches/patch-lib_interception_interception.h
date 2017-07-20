$NetBSD$

--- lib/interception/interception.h.orig	2017-07-03 15:33:06.000000000 +0000
+++ lib/interception/interception.h
@@ -15,8 +15,8 @@
 #ifndef INTERCEPTION_H
 #define INTERCEPTION_H
 
-#if !defined(__linux__) && !defined(__FreeBSD__) && \
-  !defined(__APPLE__) && !defined(_WIN32)
+#if !defined(__linux__) && !defined(__FreeBSD__) && !defined(__NetBSD__) && \
+    !defined(__APPLE__) && !defined(_WIN32)
 # error "Interception doesn't work on this operating system."
 #endif
 
@@ -129,7 +129,7 @@ const interpose_substitution substitutio
     extern "C" ret_type func(__VA_ARGS__);
 # define DECLARE_WRAPPER_WINAPI(ret_type, func, ...) \
     extern "C" __declspec(dllimport) ret_type __stdcall func(__VA_ARGS__);
-#elif defined(__FreeBSD__)
+#elif defined(__FreeBSD__) || defined(__NetBSD__)
 # define WRAP(x) __interceptor_ ## x
 # define WRAPPER_NAME(x) "__interceptor_" #x
 # define INTERCEPTOR_ATTRIBUTE __attribute__((visibility("default")))
@@ -241,7 +241,7 @@ typedef unsigned long uptr;  // NOLINT
 
 #define INCLUDED_FROM_INTERCEPTION_LIB
 
-#if defined(__linux__) || defined(__FreeBSD__)
+#if defined(__linux__) || defined(__FreeBSD__) || defined(__NetBSD__)
 # include "interception_linux.h"
 # define INTERCEPT_FUNCTION(func) INTERCEPT_FUNCTION_LINUX_OR_FREEBSD(func)
 # define INTERCEPT_FUNCTION_VER(func, symver) \
