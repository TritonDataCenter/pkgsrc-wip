$NetBSD$

--- src/fuseops.c.orig	2014-05-14 19:48:45.000000000 +0000
+++ src/fuseops.c
@@ -361,7 +361,8 @@ static int mp3fs_release(const char *pat
 
 /* We need synchronous reads. */
 static void *mp3fs_init(struct fuse_conn_info *conn) {
-    conn->async_read = 0;
+    if (conn)
+        conn->async_read = 0;
     
     return NULL;
 }
