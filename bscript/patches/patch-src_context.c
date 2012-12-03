$NetBSD$

Fix "label at end of compound statement" error.

--- src/context.c.orig	2001-12-29 17:07:11.000000000 +0000
+++ src/context.c
@@ -440,7 +440,7 @@ void bs_context_exec_push_symbol( BSCont
      bs_context_push_string(cx->stack, symbol->string);
      break;
    default:
-     //trigger_error (cx, CXERROR_BADSYMTYPE);
+     ;//trigger_error (cx, CXERROR_BADSYMTYPE);
    }
 }
 
