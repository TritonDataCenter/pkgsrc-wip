$NetBSD$

Adds NetBSD support.

--- include/SFML/Config.hpp.orig	2010-01-27 13:54:01.000000000 +0000
+++ include/SFML/Config.hpp
@@ -54,6 +54,11 @@
     // FreeBSD
     #define SFML_SYSTEM_FREEBSD
 
+#elif defined(__NetBSD__) || defined(__NetBSD_kernel__)
+
+    // NetBSD
+    #define SFML_SYSTEM_NETBSD
+
 #else
 
     // Unsupported system
