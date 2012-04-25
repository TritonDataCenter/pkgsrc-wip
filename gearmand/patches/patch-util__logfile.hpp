$NetBSD$

Fix build with GCC 4.7.
--- util/logfile.hpp.orig	2011-08-17 15:38:30.000000000 +0000
+++ util/logfile.hpp
@@ -39,6 +39,7 @@
 
 #include <string>
 #include <fstream>
+#include "unistd.h"
 
 namespace datadifferential {
 namespace util {
