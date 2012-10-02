$NetBSD$

--- programs/dtksh/ksh93/src/lib/libast/sfio/sfvprintf.c.orig	2012-09-28 21:35:25.000000000 +0000
+++ programs/dtksh/ksh93/src/lib/libast/sfio/sfvprintf.c
@@ -301,7 +301,7 @@ loop_fa :
 			GETARG(form,form,argf,args,char*,char*,'1',t_user,n_user);
 			if(!form)
 				form = "";
-#if defined(__FreeBSD__) && !defined(__LP64__)
+#if defined(CSRG_BASED) && !defined(__LP64__)
 			GETARG(argsp,argsp,argf,args,va_list*,va_list*,'2',t_user,n_user);
 			memcpy((Void_t*)(&(fa->args)), (Void_t*)(&args), sizeof(va_list));
 			memcpy((Void_t*)(&args), (Void_t*)argsp, sizeof(va_list));
@@ -319,7 +319,7 @@ loop_fa :
 		default :	/* unknown directive */
 			if(extf)
 			{
-#if defined(__FreeBSD__) && !defined(__LP64__)
+#if defined(CSRG_BASED) && !defined(__LP64__)
 				va_list savarg = args;  /* is this portable? */
 #else
 				va_list	savarg; 	/* is this portable?   Sorry .. NO. */
@@ -332,7 +332,7 @@ loop_fa :
 				if((sp = astr) )
 					goto s_format;
 
-#if defined(__FreeBSD__) && !defined(__LP64__)
+#if defined(CSRG_BASED) && !defined(__LP64__)
 				args = savarg;  /* extf failed, treat as if unmatched */
 #else
 				__va_copy( args, savarg ); /* extf failed, treat as if unmatched */
