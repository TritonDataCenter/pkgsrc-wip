$NetBSD$

Not every platform supports aarch64 yet.

--- libpkg/private/elf_tables.h.orig	2015-02-20 00:10:44.000000000 +0000
+++ libpkg/private/elf_tables.h
@@ -33,7 +33,9 @@ struct _elf_corres {
 static const struct _elf_corres mach_corres[] = {
 	{ EM_386, "x86" },
 	{ EM_X86_64, "x86" },
+#ifdef EM_AARCH64
 	{ EM_AARCH64, "aarch64" },
+#endif
 	{ EM_ARM, "arm" },
 	{ EM_MIPS, "mips" },
 	{ EM_PPC, "powerpc" },
