$NetBSD$

Adds NetBSD support.

--- src/SFML/System/Platform.hpp.orig	2010-01-27 14:00:23.000000000 +0000
+++ src/SFML/System/Platform.hpp
@@ -35,7 +35,7 @@
 
     #include <SFML/System/Win32/Platform.hpp>
 
-#elif defined(SFML_SYSTEM_LINUX) || defined(SFML_SYSTEM_MACOS) || defined(SFML_SYSTEM_FREEBSD)
+#elif defined(SFML_SYSTEM_LINUX) || defined(SFML_SYSTEM_MACOS) || defined(SFML_SYSTEM_FREEBSD) || defined(SFML_SYSTEM_NETBSD)
 
     #include <SFML/System/Unix/Platform.hpp>
 
