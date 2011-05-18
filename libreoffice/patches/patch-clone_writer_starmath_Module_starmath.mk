$NetBSD$

--- clone/writer/starmath/Module_starmath.mk.orig	2011-05-11 12:24:36 +0000
+++ clone/writer/starmath/Module_starmath.mk
@@ -29,10 +29,6 @@ $(eval $(call gb_Module_add_targets,sm,\
     Package_uiconfig \
 ))
 
-$(eval $(call gb_Module_add_check_targets,sm,\
-    CppunitTest_starmath_qa_cppunit \
-))
-
 $(eval $(call gb_Module_add_subsequentcheck_targets,sm,\
     JunitTest_starmath_unoapi \
 ))
