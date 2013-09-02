$NetBSD$

Missing prototypes for strcat() etc.

--- protocol-stats/C_ProtocolStats.hpp.orig	2010-10-27 12:30:16.000000000 +0000
+++ protocol-stats/C_ProtocolStats.hpp
@@ -29,6 +29,7 @@
 #include "C_Semaphore.hpp"
 #include "fstream_t.hpp"
 #include "TimeUtils.hpp"
+#include <string.h>
 
 #define TIME_LENGTH 32
 
