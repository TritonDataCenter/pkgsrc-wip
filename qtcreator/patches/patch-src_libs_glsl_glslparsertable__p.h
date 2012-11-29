$NetBSD$

Fix naming conflict of T_RESERVED with a system header define.

--- src/libs/glsl/glslparsertable_p.h.orig	2012-08-08 13:47:06.000000000 +0000
+++ src/libs/glsl/glslparsertable_p.h
@@ -165,7 +165,7 @@ public:
     T_PRECISION = 106,
     T_PREPROC = 171,
     T_QUESTION = 107,
-    T_RESERVED = 174,
+    TOKEN_RESERVED = 174,
     T_RETURN = 108,
     T_RIGHT_ANGLE = 109,
     T_RIGHT_ASSIGN = 110,
