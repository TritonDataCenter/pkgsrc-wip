$NetBSD$

Missing functions: already fixed in the upstream.


--- libraries/integer-simple/GHC/Integer.hs.orig	2013-04-18 21:34:44.000000000 +0000
+++ libraries/integer-simple/GHC/Integer.hs
@@ -27,6 +27,7 @@ module GHC.Integer (
     plusInteger, minusInteger, timesInteger, negateInteger,
     eqInteger, neqInteger, absInteger, signumInteger,
     leInteger, gtInteger, ltInteger, geInteger, compareInteger,
+    divInteger, modInteger,
     divModInteger, quotRemInteger, quotInteger, remInteger,
     encodeFloatInteger, decodeFloatInteger, floatFromInteger,
     encodeDoubleInteger, decodeDoubleInteger, doubleFromInteger,
