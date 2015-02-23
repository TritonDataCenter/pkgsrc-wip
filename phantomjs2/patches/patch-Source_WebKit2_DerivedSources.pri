$NetBSD: patch-Source_WebKit2_DerivedSources.pri,v 1.1 2014/12/30 17:23:48 adam Exp $

* Fix build from the lack of many headers, this is ugly hack

--- src/qt/qtwebkit/Source/WebKit2/DerivedSources.pri.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Source/WebKit2/DerivedSources.pri
@@ -4,6 +4,9 @@
 # See 'Tools/qmake/README' for an overview of the build system
 # -------------------------------------------------------------------
 
+# XXX Workaround for the lack of invocation of fwheader_generator target.
+ALL_DEPS += fwheader_generator
+
 # This file is both a top level target, and included from Target.pri,
 # so that the resulting generated sources can be added to SOURCES.
 # We only set the template if we're a top level target, so that we
