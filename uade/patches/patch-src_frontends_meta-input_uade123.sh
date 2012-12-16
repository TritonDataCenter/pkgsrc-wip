$NetBSD$

Fixes portability failure.

--- src/frontends/meta-input/uade123.sh.orig	2009-10-29 21:01:12.000000000 +0000
+++ src/frontends/meta-input/uade123.sh
@@ -14,7 +14,7 @@ fname=`echo $2| sed -e s/["file:"]*//`
 
 case $1 in
         play)
-		if [ "$3" == "0" ]; then
+		if [ "$3" = "0" ]; then
 		  subsong=""
 		else
 		  subsong="--subsong $3"
