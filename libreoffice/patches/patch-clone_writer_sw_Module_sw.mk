$NetBSD$

--- clone/writer/sw/Module_sw.mk.orig	2011-06-14 15:12:29 +0000
+++ clone/writer/sw/Module_sw.mk
@@ -39,11 +39,6 @@ $(eval $(call gb_Module_add_targets,sw,\
     Package_xml \
 ))
 
-$(eval $(call gb_Module_add_check_targets,sw,\
-    CppunitTest_sw_test_filters \
-    CppunitTest_sw_swdoc_test \
-))
-
 $(eval $(call gb_Module_add_subsequentcheck_targets,sw,\
     JunitTest_sw_complex \
     JunitTest_sw_unoapi \
