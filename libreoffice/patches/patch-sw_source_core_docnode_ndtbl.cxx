$NetBSD$

--- sw/source/core/docnode/ndtbl.cxx.orig	2012-03-27 16:22:01.000000000 +0000
+++ sw/source/core/docnode/ndtbl.cxx
@@ -1078,8 +1078,16 @@ SwTableNode* SwNodes::TextToTable( const
 
 const SwTable* SwDoc::TextToTable( const std::vector< std::vector<SwNodeRange> >& rTableNodes )
 {
+    if (rTableNodes.empty())
+    return NULL;
+
+    std::vector<SwNodeRange> rFirstRange = *rTableNodes.begin();
+
+    if (rFirstRange.empty())
+    return NULL;
+
     /* Save first node in the selection if it is a content node. */
-    SwCntntNode * pSttCntntNd = rTableNodes.begin()->begin()->aStart.GetNode().GetCntntNode();
+    SwCntntNode * pSttCntntNd = rFirstRange.begin()->aStart.GetNode().GetCntntNode();
 
     /**debug**/
 #if OSL_DEBUG_LEVEL > 1
