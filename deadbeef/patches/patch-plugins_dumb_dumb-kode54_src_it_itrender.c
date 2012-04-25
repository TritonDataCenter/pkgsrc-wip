$NetBSD$
Don't add (wrong) declaration for log2 on non-linux.
--- plugins/dumb/dumb-kode54/src/it/itrender.c.orig	2012-03-24 10:09:37.000000000 +0000
+++ plugins/dumb/dumb-kode54/src/it/itrender.c
@@ -3558,7 +3558,7 @@ static void process_playing(DUMB_IT_SIGR
 	playing->sample_vibrato_time += playing->sample->vibrato_speed;
 }
 
-#ifndef __linux__
+#if 0
 static inline float log2(float x) {return (float)log(x)/(float)log(2.0f);}
 #endif
 
