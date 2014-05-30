$NetBSD$

Respect the reality as CMake found it, there might not be libsunmath.
--- src/OSD/OSD_signal.cxx.orig	2014-02-12 20:06:33.000000000 +0000
+++ src/OSD/OSD_signal.cxx
@@ -422,7 +422,7 @@ void OSD::SetSignal(const Standard_Boole
 
   if( aFloatingSignal ) {
     //==== Enable the floating point exceptions ===============
-#if defined (__sun) || defined (SOLARIS)
+#if ( defined (__sun) || defined (SOLARIS) ) && HAVE_SUNMATH
     sigfpe_handler_type PHandler = (sigfpe_handler_type) Handler ;
     stat = ieee_handler("set", "invalid",  PHandler);
     stat = ieee_handler("set", "division", PHandler) || stat;
