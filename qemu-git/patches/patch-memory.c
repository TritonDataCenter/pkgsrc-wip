$NetBSD$

--- memory.c.orig	2017-08-25 15:26:31.000000000 +0000
+++ memory.c
@@ -2701,10 +2701,10 @@ typedef struct MemoryRegionList MemoryRe
 
 struct MemoryRegionList {
     const MemoryRegion *mr;
-    QTAILQ_ENTRY(MemoryRegionList) queue;
+    QTAILQ_ENTRY(MemoryRegionList) mrqueue;
 };
 
-typedef QTAILQ_HEAD(queue, MemoryRegionList) MemoryRegionListHead;
+typedef QTAILQ_HEAD(mrqueue, MemoryRegionList) MemoryRegionListHead;
 
 #define MR_SIZE(size) (int128_nz(size) ? (hwaddr)int128_get64( \
                            int128_sub((size), int128_one())) : 0)
@@ -2746,7 +2746,7 @@ static void mtree_print_mr(fprintf_funct
         bool found = false;
 
         /* check if the alias is already in the queue */
-        QTAILQ_FOREACH(ml, alias_print_queue, queue) {
+        QTAILQ_FOREACH(ml, alias_print_queue, mrqueue) {
             if (ml->mr == mr->alias) {
                 found = true;
             }
@@ -2755,7 +2755,7 @@ static void mtree_print_mr(fprintf_funct
         if (!found) {
             ml = g_new(MemoryRegionList, 1);
             ml->mr = mr->alias;
-            QTAILQ_INSERT_TAIL(alias_print_queue, ml, queue);
+            QTAILQ_INSERT_TAIL(alias_print_queue, ml, mrqueue);
         }
         mon_printf(f, TARGET_FMT_plx "-" TARGET_FMT_plx
                    " (prio %d, %s): alias %s @%s " TARGET_FMT_plx
@@ -2783,26 +2783,26 @@ static void mtree_print_mr(fprintf_funct
     QTAILQ_FOREACH(submr, &mr->subregions, subregions_link) {
         new_ml = g_new(MemoryRegionList, 1);
         new_ml->mr = submr;
-        QTAILQ_FOREACH(ml, &submr_print_queue, queue) {
+        QTAILQ_FOREACH(ml, &submr_print_queue, mrqueue) {
             if (new_ml->mr->addr < ml->mr->addr ||
                 (new_ml->mr->addr == ml->mr->addr &&
                  new_ml->mr->priority > ml->mr->priority)) {
-                QTAILQ_INSERT_BEFORE(ml, new_ml, queue);
+                QTAILQ_INSERT_BEFORE(ml, new_ml, mrqueue);
                 new_ml = NULL;
                 break;
             }
         }
         if (new_ml) {
-            QTAILQ_INSERT_TAIL(&submr_print_queue, new_ml, queue);
+            QTAILQ_INSERT_TAIL(&submr_print_queue, new_ml, mrqueue);
         }
     }
 
-    QTAILQ_FOREACH(ml, &submr_print_queue, queue) {
+    QTAILQ_FOREACH(ml, &submr_print_queue, mrqueue) {
         mtree_print_mr(mon_printf, f, ml->mr, level + 1, cur_start,
                        alias_print_queue);
     }
 
-    QTAILQ_FOREACH_SAFE(ml, &submr_print_queue, queue, next_ml) {
+    QTAILQ_FOREACH_SAFE(ml, &submr_print_queue, mrqueue, next_ml) {
         g_free(ml);
     }
 }
@@ -2872,13 +2872,13 @@ void mtree_info(fprintf_function mon_pri
     }
 
     /* print aliased regions */
-    QTAILQ_FOREACH(ml, &ml_head, queue) {
+    QTAILQ_FOREACH(ml, &ml_head, mrqueue) {
         mon_printf(f, "memory-region: %s\n", memory_region_name(ml->mr));
         mtree_print_mr(mon_printf, f, ml->mr, 1, 0, &ml_head);
         mon_printf(f, "\n");
     }
 
-    QTAILQ_FOREACH_SAFE(ml, &ml_head, queue, ml2) {
+    QTAILQ_FOREACH_SAFE(ml, &ml_head, mrqueue, ml2) {
         g_free(ml);
     }
 }
