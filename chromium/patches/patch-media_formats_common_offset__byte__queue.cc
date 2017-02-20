$NetBSD$

--- media/formats/common/offset_byte_queue.cc.orig	2017-02-02 02:02:55.000000000 +0000
+++ media/formats/common/offset_byte_queue.cc
@@ -46,13 +46,13 @@ void OffsetByteQueue::PeekAt(int64_t off
   *size = tail() - offset;
 }
 
-bool OffsetByteQueue::Trim(int64_t max_offset) {
-  if (max_offset < head_) return true;
-  if (max_offset > tail()) {
+bool OffsetByteQueue::Trim(int64_t _max_offset) {
+  if (_max_offset < head_) return true;
+  if (_max_offset > tail()) {
     Pop(size_);
     return false;
   }
-  Pop(max_offset - head_);
+  Pop(_max_offset - head_);
   return true;
 }
 
