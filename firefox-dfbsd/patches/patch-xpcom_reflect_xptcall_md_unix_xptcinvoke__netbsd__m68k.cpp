$NetBSD: patch-xpcom_reflect_xptcall_md_unix_xptcinvoke__netbsd__m68k.cpp,v 1.1 2014/10/15 13:43:32 ryoon Exp $

--- xpcom/reflect/xptcall/md/unix/xptcinvoke_netbsd_m68k.cpp.orig	2014-10-11 09:06:50.000000000 +0000
+++ xpcom/reflect/xptcall/md/unix/xptcinvoke_netbsd_m68k.cpp
@@ -100,6 +100,15 @@ extern "C" {
     }
 }
 
+/*
+ * SYMBOL PREFIX must be "_" for aout symbols and "" for ELF
+ */
+#ifndef __ELF__
+#define	SYMBOLPREFIX	"_"
+#else
+#define	SYMBOLPREFIX
+#endif
+
 XPTC_PUBLIC_API(nsresult)
 XPTC_InvokeByIndex(nsISupports* that, uint32_t methodIndex,
                    uint32_t paramCount, nsXPTCVariant* params)
@@ -107,30 +116,30 @@ XPTC_InvokeByIndex(nsISupports* that, ui
     uint32_t result;
 
  __asm__ __volatile__(
-    "movl  %4, sp@-\n\t"
-    "movl  %3, sp@-\n\t"
-    "jbsr  _invoke_count_words\n\t"     /* count words */
-    "addql #8, sp\n\t"
-    "lsll  #2, d0\n\t"      /* *= 4 */
-    "movl  sp, a2\n\t"	    /* save original sp */
-    "subl  d0, sp\n\t"      /* make room for params */
-    "movl  sp, a0\n\t"
-    "movl  %4, sp@-\n\t"
-    "movl  %3, sp@-\n\t"
-    "movl  a0, sp@-\n\t"
-    "jbsr  _invoke_copy_to_stack\n\t"   /* copy params */
-    "addl  #12, sp\n\t"
-    "movl  %1, a0\n\t"
-    "movl  a0@, a1\n\t"
-    "movl  %2, d0\n\t"      /* function index */
-    "movl  a0, d1\n\t"
-    "movw  a1@(8,d0:l:8), a0\n\t"
-    "addl  a0, d1\n\t"
-    "movl  a1@(12,d0:l:8), a1\n\t"
-    "movl  d1, sp@-\n\t"
-    "jbsr  a1@\n\t"
-    "movl  a2, sp\n\t"	    /* restore original sp */
-    "movl  d0, %0\n\t"
+    "movl  %4, %%sp@-\n\t"
+    "movl  %3, %%sp@-\n\t"
+    "jbsr  "SYMBOLPREFIX"invoke_count_words\n\t"     /* count words */
+    "addql #8, %%sp\n\t"
+    "lsll  #2, %%d0\n\t"      /* *= 4 */
+    "movl  %%sp, %%a2\n\t"         /* save original sp */
+    "subl  %%d0, %%sp\n\t"      /* make room for params */
+    "movl  %%sp, %%a0\n\t"
+    "movl  %4, %%sp@-\n\t"
+    "movl  %3, %%sp@-\n\t"
+    "movl  %%a0, %%sp@-\n\t"
+    "jbsr  "SYMBOLPREFIX"invoke_copy_to_stack\n\t"   /* copy params */
+    "addl  #12, %%sp\n\t"
+    "movl  %1, %%a0\n\t"
+    "movl  %%a0@, %%a1\n\t"
+    "movl  %2, %%d0\n\t"      /* function index */
+    "movl  %%a0, %%d1\n\t"
+    "movw  %%a1@(8,%%d0:l:8), %%a0\n\t"
+    "addl  %%a0, %%d1\n\t"
+    "movl  %%a1@(12,%%d0:l:8), %%a1\n\t"
+    "movl  %%d1, %%sp@-\n\t"
+    "jbsr  %%a1@\n\t"
+    "movl  %%a2, %%sp\n\t"         /* restore original sp */
+    "movl  %%d0, %0\n\t"
     : "=g" (result)         /* %0 */
     : "g" (that),           /* %1 */
       "g" (methodIndex),    /* %2 */
