$NetBSD$

Adds NetBSD support.

--- include/SFML/Window/OpenGL.hpp.orig	2010-01-27 13:53:54.000000000 +0000
+++ include/SFML/Window/OpenGL.hpp
@@ -42,7 +42,7 @@
     #include <GL/gl.h>
     #include <GL/glu.h>
 
-#elif defined(SFML_SYSTEM_LINUX) || defined(SFML_SYSTEM_FREEBSD)
+#elif defined(SFML_SYSTEM_LINUX) || defined(SFML_SYSTEM_FREEBSD) || defined(SFML_SYSTEM_NETBSD)
 
     #include <GL/gl.h>
     #include <GL/glu.h>
