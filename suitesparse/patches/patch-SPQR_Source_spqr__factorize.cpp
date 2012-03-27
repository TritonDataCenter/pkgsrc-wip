$NetBSD$

# From FreeBSD
--- SPQR/Source/spqr_factorize.cpp.orig	2009-11-19 23:00:07.000000000 +0000
+++ SPQR/Source/spqr_factorize.cpp
@@ -31,6 +31,7 @@
 // =============================================================================
 
 #include "spqr.hpp"
+#include <string>
 
 #define FCHUNK 32        // FUTURE: make a parameter; Householder block size
 
