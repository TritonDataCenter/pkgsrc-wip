$NetBSD$

Fixes "array subscript has type 'char'" warning.

--- source/mupen64plus-core/src/osd/screenshot.cpp.orig	2012-03-10 18:31:29.000000000 +0000
+++ source/mupen64plus-core/src/osd/screenshot.cpp
@@ -173,7 +173,7 @@ static void GetBaseFilepath(char *filepa
         if (ch == ' ')
             *pch++ = '_';
         else
-            *pch++ = tolower(ch);
+            *pch++ = tolower((unsigned char)ch);
     } while (ch != 0);
 
     return;
