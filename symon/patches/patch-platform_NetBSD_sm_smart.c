$NetBSD$

--- platform/NetBSD/sm_smart.c.orig	2012-01-14 14:05:06.000000000 +0000
+++ platform/NetBSD/sm_smart.c
@@ -64,11 +64,12 @@ static struct atareq smart_cmd = {
 };
 
 /* per drive storage structure */
-static struct smart_device {
+struct smart_device {
     char name[MAX_PATH_LEN];
     int fd;
     int type;
     int failed;
+    struct atareq cmd;
     struct smart_values data;
 } *smart_devs = NULL;
 static int smart_size = 0;
