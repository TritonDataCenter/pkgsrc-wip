$NetBSD$
* strcmp need cstring
--- src/backend/ps/T1_FontDataBase.cc.orig	2007-08-17 10:02:40.000000000 +0000
+++ src/backend/ps/T1_FontDataBase.cc
@@ -20,7 +20,8 @@
 #include <config.h>
 #include <map>
 #include <string>
-#include <stdlib.h>
+#include <cstdlib>
+#include <cstring>
 #include <iostream>
 #include <list>
 
