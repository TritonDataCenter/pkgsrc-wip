$NetBSD$

--- Source/ThirdParty/ANGLE/src/compiler/glslang.y.orig	2014-04-14 06:40:44.000000000 +0000
+++ Source/ThirdParty/ANGLE/src/compiler/glslang.y
@@ -46,6 +46,7 @@ WHICH GENERATES THE GLSL ES PARSER (glsl
 %expect 1 /* One shift reduce conflict because of if | else */
 %pure-parser
 %parse-param {TParseContext* context}
+%lex-param {TParseContext* context}
 %locations
 %lex-param {YYLEX_PARAM}
 
