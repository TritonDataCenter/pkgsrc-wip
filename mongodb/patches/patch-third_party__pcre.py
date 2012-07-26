$NetBSD$

Need to link libpcre too.

--- third_party/pcre.py.orig	2012-06-04 13:42:54.000000000 +0000
+++ third_party/pcre.py
@@ -33,6 +33,7 @@ def configure( env , fileLists , options
 
 def configureSystem( env , fileLists , options ):
 
+    env.Append( LIBS=[ "pcre" ] )
     env.Append( LIBS=[ "pcrecpp" ] )
 
 
