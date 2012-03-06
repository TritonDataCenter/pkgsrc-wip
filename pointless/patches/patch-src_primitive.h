$NetBSD$

--- src/primitive.h.orig	2003-05-20 21:04:02.000000000 +0000
+++ src/primitive.h
@@ -106,7 +106,7 @@ friend class TiledTexture;
 public:
 	typedef Ref<Tile> handle;
 	~Tile();
-	TiledTexture* get_texture() const { // Making this const is a HACK
+	class TiledTexture* get_texture() const { // Making this const is a HACK
 		return _texture; } 
 	void copy_from_subimage(Image *img, uint xoffset, uint yoffset);
 private:
