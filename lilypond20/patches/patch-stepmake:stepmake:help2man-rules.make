$NetBSD$
--- ./stepmake/stepmake/help2man-rules.make.orig	Thu Oct 23 02:49:40 2003
+++ ./stepmake/stepmake/help2man-rules.make	Thu Oct 23 02:49:51 2003
@@ -19,7 +19,7 @@
 
 ifeq ($(strip $(CROSS)),no)
 $(outdir)/%.1: $(outdir)/%
-	$(HELP2MAN_COMMAND)
+	- $(HELP2MAN_COMMAND)
 else
 # When cross building, some manpages will not build because the
 # executable does not run.  We assume the manpages to be generated
