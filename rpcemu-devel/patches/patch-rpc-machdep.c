$NetBSD$

--- rpc-machdep.c.orig	2011-09-28 02:57:08.000000000 +0000
+++ rpc-machdep.c
@@ -28,7 +28,8 @@ rpcemu_get_datadir(void)
 		*p = '\0';
 	}
 
-	return datadir;
+//	return datadir;
+	return "@RPCEMUBASE@";
 }
 
 /**
