$NetBSD$

Add mupdf-1.7 support.

--- links.c.orig	2014-10-16 22:21:41.000000000 +0000
+++ links.c
@@ -31,7 +31,7 @@ pdf_page_links_get(zathura_page_t* page,
     goto error_free;
   }
 
-  fz_link* link = fz_load_links(mupdf_document->document, mupdf_page->page);
+  fz_link* link = fz_load_links(mupdf_document->ctx, mupdf_page->page);
   for (; link != NULL; link = link->next) {
     /* extract position */
     zathura_rectangle_t position;
