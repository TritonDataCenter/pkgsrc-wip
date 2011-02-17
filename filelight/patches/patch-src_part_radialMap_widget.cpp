$NetBSD$

Fix build with gcc4.5

--- src/part/radialMap/widget.cpp.orig	2009-05-29 18:35:06.000000000 +0000
+++ src/part/radialMap/widget.cpp
@@ -64,7 +64,7 @@ RadialMap::Widget::path() const
 KUrl
 RadialMap::Widget::url(File const * const file) const
 {
-    return KUrl::KUrl(file ? file->fullPath() : m_tree->fullPath());
+    return KUrl(file ? file->fullPath() : m_tree->fullPath());
 }
 
 void
