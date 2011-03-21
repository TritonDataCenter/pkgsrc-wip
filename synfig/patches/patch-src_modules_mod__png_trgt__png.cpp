$NetBSD$

Fix build breakage on png-1.5.1

--- src/modules/mod_png/trgt_png.cpp.orig	2010-11-13 13:51:52.000000000 +0000
+++ src/modules/mod_png/trgt_png.cpp
@@ -62,5 +62,5 @@ void
 png_trgt::png_out_error(png_struct *png_data,const char *msg)
 {
-	png_trgt *me=(png_trgt*)png_data->error_ptr;
+	png_trgt *me=(png_trgt*)png_get_error_ptr(png_data);
 	synfig::error(strprintf("png_trgt: error: %s",msg));
 	me->ready=false;
@@ -70,5 +70,5 @@ void
 png_trgt::png_out_warning(png_struct *png_data,const char *msg)
 {
-	png_trgt *me=(png_trgt*)png_data->error_ptr;
+	png_trgt *me=(png_trgt*)png_get_error_ptr(png_data);
 	synfig::warning(strprintf("png_trgt: warning: %s",msg));
 	me->ready=false;
