$NetBSD$

* Change base directory.

--- rpc-machdep.c.orig	2014-10-22 18:23:44.000000000 +0000
+++ rpc-machdep.c
@@ -28,7 +28,7 @@ rpcemu_get_datadir(void)
 		*p = '\0';
 	}
 
-	return datadir;
+	return "@RPCEMUBASE@";
 }
 
 /**
