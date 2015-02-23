$NetBSD$

Add support for SunOS. Only configure here, delegate build to pkgsrc.
--- src/qt/preconfig.sh.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/preconfig.sh
@@ -107,6 +107,14 @@ if [[ $OSTYPE == darwin* ]]; then
     QT_CFG+=' -no-c++11'        # Build fails on mac right now with C++11
 fi
 
+if [[ $OSTYPE = solaris* ]]; then
+    if [[ $MACHINE_ARCH = x86_64 ]]; then
+        QT_CFG+=' -platform solaris-g++-64'
+    else
+        QT_CFG+=' -platform solaris-g++'
+    fi
+fi
+
 # Unnecessary Qt modules
 QT_CFG+=' -no-opengl'
 QT_CFG+=' -no-openvg'
