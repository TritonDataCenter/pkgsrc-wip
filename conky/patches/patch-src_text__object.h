$NetBSD$

--- src/text_object.h.orig	2012-05-03 21:08:27.000000000 +0000
+++ src/text_object.h
@@ -311,7 +311,8 @@ enum text_object_type {
 	OBJ_pop3_unseen,
 	OBJ_pop3_used,
 #if (defined(__FreeBSD__) || defined(__FreeBSD_kernel__) \
-		|| defined(__OpenBSD__)) && (defined(i386) || defined(__i386__))
+	|| defined(__OpenBSD__)) && (defined(i386) || defined(__i386__)) \
+	|| defined(__NetBSD__)
 	OBJ_apm_adapter,
 	OBJ_apm_battery_time,
 	OBJ_apm_battery_life,
