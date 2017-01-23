$NetBSD: patch-gfx_thebes_gfxFontUtils.cpp,v 1.1 2016/12/03 09:58:26 ryoon Exp $

--- gfx/thebes/gfxFontUtils.cpp.orig	2016-10-31 20:15:32.000000000 +0000
+++ gfx/thebes/gfxFontUtils.cpp
@@ -918,16 +918,18 @@ IsValidSFNTVersion(uint32_t version)
            version == TRUETYPE_TAG('t','r','u','e');
 }
 
-// copy and swap UTF-16 values, assume no surrogate pairs, can be in place
+// Copy and swap UTF-16 values, assume no surrogate pairs, can be in place.
+// aInBuf and aOutBuf are NOT necessarily 16-bit-aligned, so we should avoid
+// accessing them directly as uint16_t* values.
+// aLen is count of UTF-16 values, so the byte buffers are twice that.
 static void
-CopySwapUTF16(const uint16_t *aInBuf, uint16_t *aOutBuf, uint32_t aLen)
+CopySwapUTF16(const char* aInBuf, char* aOutBuf, uint32_t aLen)
 {
-    const uint16_t *end = aInBuf + aLen;
+    const char* end = aInBuf + aLen * 2;
     while (aInBuf < end) {
-        uint16_t value = *aInBuf;
-        *aOutBuf = (value >> 8) | (value & 0xff) << 8;
-        aOutBuf++;
-        aInBuf++;
+        uint8_t b0 = *aInBuf++;
+        *aOutBuf++ = *aInBuf++;
+        *aOutBuf++ = b0;
     }
 }
 
@@ -1441,13 +1443,13 @@ gfxFontUtils::DecodeFontName(const char 
     if (csName[0] == 0) {
         // empty charset name: data is utf16be, no need to instantiate a converter
         uint32_t strLen = aByteLen / 2;
-#ifdef IS_LITTLE_ENDIAN
         aName.SetLength(strLen);
-        CopySwapUTF16(reinterpret_cast<const uint16_t*>(aNameData),
-                      reinterpret_cast<uint16_t*>(aName.BeginWriting()), strLen);
+#ifdef IS_LITTLE_ENDIAN
+        CopySwapUTF16(aNameData, reinterpret_cast<char*>(aName.BeginWriting()),
+                      strLen);
 #else
-        aName.Assign(reinterpret_cast<const char16_t*>(aNameData), strLen);
-#endif    
+        memcpy(aName.BeginWriting(), aNameData, strLen * 2);
+#endif
         return true;
     }
 
