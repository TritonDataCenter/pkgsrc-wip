$NetBSD$
* strcmp needs cstring
--- src/engine/mathml/mathVariantAux.cc.orig	2007-08-17 10:02:38.000000000 +0000
+++ src/engine/mathml/mathVariantAux.cc
@@ -20,6 +20,8 @@
 
 #include <cassert>
 
+#include <cstring>
+
 #include "mathVariantAux.hh"
 
 static MathVariantAttributes vattr[] = {
