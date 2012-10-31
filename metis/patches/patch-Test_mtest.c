$NetBSD$

--- Test/mtest.c.orig	1998-09-21 12:59:52.000000000 +0000
+++ Test/mtest.c
@@ -54,6 +54,7 @@ main(int argc, char *argv[])
   printf("**********************************************************************\n");
 
   GKfree(&graph.xadj, &graph.adjncy, &graph.vwgt, &graph.adjwgt, LTERM);
+  exit(0);
 }  
 
 
