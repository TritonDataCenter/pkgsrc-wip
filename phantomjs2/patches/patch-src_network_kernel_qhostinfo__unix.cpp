$NetBSD: patch-src_network_kernel_qhostinfo__unix.cpp,v 1.1 2014/12/30 17:23:46 adam Exp $

--- src/qt/qtbase/src/network/kernel/qhostinfo_unix.cpp.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtbase/src/network/kernel/qhostinfo_unix.cpp
@@ -126,6 +126,8 @@ static void resolveLibrary()
         if (!local_res_nclose)
             local_res_ninit = 0;
     }
+    if (local_res_ninit)
+        local_res_init = 0;
 #endif
 }
 
