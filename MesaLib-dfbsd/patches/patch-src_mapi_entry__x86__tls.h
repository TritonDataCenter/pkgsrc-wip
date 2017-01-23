$NetBSD: patch-src_mapi_entry__x86__tls.h,v 1.2 2015/09/26 08:45:02 tnn Exp $

NetBSD only supports zero-initialized initial-exec tls variables in conjuction
with dlopen(3) at the moment.

Fix --enable-glx-tls with clang. From FreeBSD.

HACK: Renamed non-linking table_noop_array to locally created
netbsd_table_noop_array.

--- src/mapi/entry_x86_tls.h.orig	2016-11-10 22:05:17.000000000 +0000
+++ src/mapi/entry_x86_tls.h
@@ -56,10 +56,27 @@ __asm__(".balign 16\n"
    ".balign 16\n"                \
    func ":"
 
+#if defined(__NetBSD__) && defined(GLX_USE_TLS)
+extern const mapi_func netbsd_table_noop_array[];
 #define STUB_ASM_CODE(slot)      \
    "call x86_current_tls\n\t"    \
    "movl %gs:(%eax), %eax\n\t"   \
+   "testl %eax, %eax\n\t"        \
+   "je 1f\n\t"                   \
+   "jmp *(4 * " slot ")(%eax)\n\t" \
+   "1:\n\t"                      \
+   "call 2f\n"                   \
+   "2:\n\t"                      \
+   "popl %eax\n\t"               \
+   "addl $_GLOBAL_OFFSET_TABLE_+[.-1b], %eax\n\t" \
+   "movl netbsd_table_noop_array@GOT(%eax), %eax\n\t" \
    "jmp *(4 * " slot ")(%eax)"
+#else
+#define STUB_ASM_CODE(slot)      \
+   "call x86_current_tls\n\t"    \
+   "movl %gs:(%eax), %eax\n\t"   \
+   "jmp *(4 * " slot ")(%eax)"
+#endif
 
 #define MAPI_TMP_STUB_ASM_GCC
 #include "mapi_tmp.h"
