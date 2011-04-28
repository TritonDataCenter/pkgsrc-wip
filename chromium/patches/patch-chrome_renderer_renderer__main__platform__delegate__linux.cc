$NetBSD$

--- chrome/renderer/renderer_main_platform_delegate_linux.cc.orig	2011-04-13 08:01:45.000000000 +0000
+++ chrome/renderer/renderer_main_platform_delegate_linux.cc
@@ -36,7 +36,7 @@ bool RendererMainPlatformDelegate::Enabl
   // The seccomp sandbox is started in the renderer.
   // http://code.google.com/p/seccompsandbox/
 #if defined(ARCH_CPU_X86_FAMILY) && !defined(CHROMIUM_SELINUX) && \
-    !defined(__clang__)
+    !defined(__clang__) && !defined(OS_BSD)
   // N.b. SupportsSeccompSandbox() returns a cached result, as we already
   // called it earlier in the zygote. Thus, it is OK for us to not pass in
   // a file descriptor for "/proc".
