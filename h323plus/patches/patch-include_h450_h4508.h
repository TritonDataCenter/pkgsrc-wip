$NetBSD$

--- include/h450/h4508.h.orig	2007-08-06 20:50:51.000000000 +0000
+++ include/h450/h4508.h
@@ -196,7 +196,7 @@ class H4508_ExtendedName : public PASN_B
 
     H4508_ExtendedName & operator=(const char * v);
     H4508_ExtendedName & operator=(const PString & v);
-    H4508_ExtendedName & operator=(const PWORDArray & v);
+    H4508_ExtendedName & operator=(const PWCharArray & v);
     H4508_ExtendedName & operator=(const PASN_BMPString & v);
     PObject * Clone() const;
 };
