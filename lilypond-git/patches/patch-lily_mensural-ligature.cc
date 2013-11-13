$NetBSD$

--- lily/mensural-ligature.cc.orig	2013-11-12 11:12:50.000000000 +0000
+++ lily/mensural-ligature.cc
@@ -168,7 +168,7 @@ internal_brew_primitive (Grob *me)
       duration_log--;
     case MLP_BREVIS:
       duration_log--;
-      suffix = to_string (duration_log) + color
+      suffix = ::to_string (duration_log) + color
                + (duration_log < -1 ? "lig" : "") + "mensural";
       index = prefix + "s";
       out = fm->find_by_name (index + "r" + suffix);
