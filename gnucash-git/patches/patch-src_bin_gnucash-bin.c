$NetBSD: patch-src_bin_gnucash-bin.c,v 1.1 2014/04/21 21:40:01 wiz Exp $

Allow starting gnucash in the background.
python's readline module causes a SIGTTOU to be sent and if this
is not handled (even by ignoring it), it stops the process.

--- src/bin/gnucash-bin.c.orig	2017-07-27 09:52:15.000000000 +0000
+++ src/bin/gnucash-bin.c
@@ -22,6 +22,7 @@
  */
 #include "config.h"
 
+#include <signal.h>
 #include <stdlib.h>
 #include <stdio.h>
 #include <string.h>
@@ -614,6 +615,8 @@ inner_main (void *closure, int argc, cha
     SCM main_mod;
     char* fn;
 
+    signal(SIGTTOU, SIG_IGN);
+
     scm_c_eval_string("(debug-set! stack 200000)");
 
     main_mod = scm_c_resolve_module("gnucash main");
