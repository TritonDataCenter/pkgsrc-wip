$NetBSD$

--- clone/filters/lotuswordpro/Module_lotuswordpro.mk.orig	2011-05-17 11:28:39 +0000
+++ clone/filters/lotuswordpro/Module_lotuswordpro.mk
@@ -31,8 +31,4 @@ $(eval $(call gb_Module_add_targets,lotu
     Library_lwpft \
 ))
 
-$(eval $(call gb_Module_add_check_targets,lotuswordpro,\
-    CppunitTest_lotuswordpro_test_lotuswordpro \
-))
-
 # vim: set noet ts=4 sw=4:
