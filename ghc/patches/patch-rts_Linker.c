$NetBSD$

Support 64-bit x86 SunOS.

--- rts/Linker.c.orig	2013-04-18 21:22:46.000000000 +0000
+++ rts/Linker.c
@@ -4014,6 +4014,7 @@ ocResolve_PEi386 ( ObjectCode* oc )
 #  define ELF_TARGET_386    /* Used inside <elf.h> */
 #elif defined(x86_64_HOST_ARCH)
 #  define ELF_TARGET_X64_64
+#  define ELF_TARGET_AMD64  /* For Solaris */
 #  define ELF_64BIT
 #endif
 
