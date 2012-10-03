$NetBSD$

Needs sys/time.h for timeval and select.

--- src/SFML/Network/SelectorBase.cpp.orig	2010-01-27 14:00:37.000000000 +0000
+++ src/SFML/Network/SelectorBase.cpp
@@ -29,6 +29,7 @@
 ////////////////////////////////////////////////////////////
 // Headers
 ////////////////////////////////////////////////////////////
+#include <sys/time.h>
 #include <SFML/Network/SelectorBase.hpp>
 
 
