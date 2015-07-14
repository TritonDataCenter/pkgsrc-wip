$NetBSD$

alloca.h is obsolete.

--- 3rdparty/bgfx/src/bgfx_p.h.orig	2015-06-24 09:53:24.000000000 +0000
+++ 3rdparty/bgfx/src/bgfx_p.h
@@ -27,7 +27,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
-#include <alloca.h>
+#include <malloc.h>
 
 // Check handle, cannot be bgfx::invalidHandle and must be valid.
 #define BGFX_CHECK_HANDLE(_desc, _handleAlloc, _handle) \
