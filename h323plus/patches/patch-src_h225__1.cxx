$NetBSD$

--- src/h225_1.cxx.orig	2007-08-06 20:51:05.000000000 +0000
+++ src/h225_1.cxx
@@ -2761,7 +2761,7 @@ H225_GatekeeperIdentifier & H225_Gatekee
 }
 
 
-H225_GatekeeperIdentifier & H225_GatekeeperIdentifier::operator=(const PWORDArray & v)
+H225_GatekeeperIdentifier & H225_GatekeeperIdentifier::operator=(const PWCharArray & v)
 {
   SetValue(v);
   return *this;
@@ -2877,7 +2877,7 @@ H225_EndpointIdentifier & H225_EndpointI
 }
 
 
-H225_EndpointIdentifier & H225_EndpointIdentifier::operator=(const PWORDArray & v)
+H225_EndpointIdentifier & H225_EndpointIdentifier::operator=(const PWCharArray & v)
 {
   SetValue(v);
   return *this;
