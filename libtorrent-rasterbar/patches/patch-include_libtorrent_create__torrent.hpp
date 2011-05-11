$NetBSD$

* Support Boost 1.46.1

--- include/libtorrent/create_torrent.hpp.orig	2009-11-02 05:31:07.000000000 +0000
+++ include/libtorrent/create_torrent.hpp
@@ -152,7 +152,7 @@ namespace libtorrent
 #if BOOST_VERSION < 103600
 					std::string leaf = i->path().leaf();
 #else
-					std::string leaf = i->path().filename();
+					std::string leaf = i->path().filename().string();
 #endif
 					if (leaf == ".." || leaf == ".") continue;
 					add_files_impl(fs, p, l / leaf, pred);
