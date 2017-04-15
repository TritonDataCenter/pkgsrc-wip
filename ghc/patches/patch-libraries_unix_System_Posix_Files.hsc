$NetBSD$

--- libraries/unix/System/Posix/Files.hsc.orig	2013-04-18 21:36:40.000000000 +0000
+++ libraries/unix/System/Posix/Files.hsc
@@ -171,7 +171,7 @@ access name flags =
     if (r == 0)
 	then return True
 	else do err <- getErrno
-	        if (err == eACCES)
+	        if (err == eACCES || err == eROFS || err == eTXTBSY)
 		   then return False
 		   else throwErrnoPath "fileAccess" name
 
