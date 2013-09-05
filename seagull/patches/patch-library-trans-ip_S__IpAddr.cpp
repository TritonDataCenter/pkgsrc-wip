$NetBSD$

Add header for str*, mem* prototypes.

--- library-trans-ip/S_IpAddr.cpp.orig	2010-10-27 12:30:16.000000000 +0000
+++ library-trans-ip/S_IpAddr.cpp
@@ -17,6 +17,7 @@
  *
  */
 
+#include <string.h>
 #include "S_IpAddr.hpp"
 
 #include "Utils.hpp"
