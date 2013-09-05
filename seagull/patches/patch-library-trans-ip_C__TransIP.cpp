$NetBSD$

Add header for str*, mem* prototypes.

--- library-trans-ip/C_TransIP.cpp.orig	2010-10-27 12:30:16.000000000 +0000
+++ library-trans-ip/C_TransIP.cpp
@@ -21,6 +21,7 @@
 #include "Utils.hpp"
 
 #include <cerrno>
+#include <string.h>
 #include <unistd.h>
 
 #include <regex.h>
