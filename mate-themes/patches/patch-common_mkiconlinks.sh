$NetBSD$

* sh portabiltiy fix

--- common/mkiconlinks.sh.orig	2015-01-02 05:57:01.000000000 +0000
+++ common/mkiconlinks.sh
@@ -16,7 +16,7 @@ read NEXTLINE 
 while [ ! -z "$NEXTLINE" ] ; do
 
 	# Skip lines beginning with '#'
-	if [ ! "${NEXTLINE:0:1}" == '#' ]; then
+	if ! echo $NEXTLINE | grep -q '^#' ; then
 		#Extract first field, minus its trailing colon
 		ORIG_FILE=`echo $NEXTLINE | awk '/:/{print $1}' | sed -e 's/://'`
 
