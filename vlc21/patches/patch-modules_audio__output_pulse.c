$NetBSD: patch-modules_audio__output_pulse.c,v 1.1.1.1 2012/02/21 12:49:43 drochner Exp $

--- modules/audio_output/pulse.c.orig	2013-09-12 15:18:33.000000000 +0000
+++ modules/audio_output/pulse.c
@@ -966,7 +966,7 @@ static int Open(vlc_object_t *obj)
     aout_sys_t *sys = malloc(sizeof (*sys));
     pa_operation *op;
 
-#if !PA_CHECK_VERSION(0,9,22)
+#if !PA_CHECK_VERSION(0,9,20)
     if (!vlc_xlib_init(obj))
         return VLC_EGENERIC;
 #endif
