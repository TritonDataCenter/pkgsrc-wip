$NetBSD: patch-qmake_generators_makefile.cpp,v 1.1 2014/12/30 17:23:46 adam Exp $

* Libtoolized

--- src/qt/qtbase/qmake/generators/makefile.cpp.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtbase/qmake/generators/makefile.cpp
@@ -3298,7 +3298,7 @@ MakefileGenerator::writePkgConfigFile()
             bundle = bundle.left(suffix);
         pkgConfiglibName = "-framework " + bundle + " ";
     } else {
-        pkgConfiglibDir = "-L${libdir}";
+        pkgConfiglibDir = "-Wl,-R${libdir} -L${libdir}";
         pkgConfiglibName = "-l" + unescapeFilePath(project->first("QMAKE_ORIG_TARGET"));
         if (project->isActiveConfig("shared"))
             pkgConfiglibName += project->first("TARGET_VERSION_EXT").toQString();
