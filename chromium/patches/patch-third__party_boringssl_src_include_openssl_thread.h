$NetBSD$

--- third_party/boringssl/src/include/openssl/thread.h.orig	2016-11-10 20:02:57.000000000 +0000
+++ third_party/boringssl/src/include/openssl/thread.h
@@ -88,6 +88,9 @@ typedef pthread_rwlock_t CRYPTO_MUTEX;
 typedef union crypto_mutex_st {
   double alignment;
   uint8_t padding[3*sizeof(int) + 5*sizeof(unsigned) + 16 + 8];
+#if defined(__NetBSD__)
+  uint8_t      nbpad[64 + 8];
+#endif
 } CRYPTO_MUTEX;
 #endif
 
