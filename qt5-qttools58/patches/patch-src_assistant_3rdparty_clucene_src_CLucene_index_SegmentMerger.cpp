$NetBSD: patch-src_assistant_3rdparty_clucene_src_CLucene_index_SegmentMerger.cpp,v 1.1 2014/12/30 17:23:47 adam Exp $

--- src/assistant/3rdparty/clucene/src/CLucene/index/SegmentMerger.cpp.orig	2013-11-27 01:01:52.000000000 +0000
+++ src/assistant/3rdparty/clucene/src/CLucene/index/SegmentMerger.cpp
@@ -264,7 +264,7 @@ int32_t SegmentMerger::mergeFields()
     CND_CONDITION(fieldsWriter != NULL, "Memory allocation for fieldsWriter failed");
 
     try {  
-        IndexReader* reader = NULL;
+        reader = NULL;
         int32_t maxDoc          = 0;
         //Iterate through all readers
         for (uint32_t i = 0; i < readers.size(); i++) {
