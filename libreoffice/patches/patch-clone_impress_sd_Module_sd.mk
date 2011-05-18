$NetBSD$

--- clone/impress/sd/Module_sd.mk.orig	2011-05-10 12:45:30 +0000
+++ clone/impress/sd/Module_sd.mk
@@ -39,10 +39,6 @@ $(eval $(call gb_Module_add_targets,sd,\
     Package_xml \
 ))
 
-$(eval $(call gb_Module_add_check_targets,sd,\
-    CppunitTest_sd_uimpress \
-))
-
 $(eval $(call gb_Module_add_subsequentcheck_targets,sd,\
     JunitTest_sd_unoapi \
 ))
