$NetBSD$

--- sfx2/source/doc/objstor.cxx.orig	2012-03-27 16:22:01.000000000 +0000
+++ sfx2/source/doc/objstor.cxx
@@ -2238,7 +2238,7 @@ sal_Bool SfxObjectShell::ImportFrom( Sfx
         }
 
         return xLoader->filter( aArgs );
-        }catch(const uno::Exception&)
+        }catch(...)
         {}
     }
 
