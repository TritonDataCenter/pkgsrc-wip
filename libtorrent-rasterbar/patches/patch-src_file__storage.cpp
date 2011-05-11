$NetBSD$

* Support Boost 1.46.1

--- src/file_storage.cpp.orig	2008-10-05 01:41:56.000000000 +0000
+++ src/file_storage.cpp
@@ -147,9 +147,9 @@ namespace libtorrent
 		else
 		{
 			if (m_files.empty())
-				m_name = *file.begin();
+				m_name = file.begin()->string();
 		}
-		TORRENT_ASSERT(m_name == *file.begin());
+		TORRENT_ASSERT(m_name == file.begin()->string());
 		file_entry e;
 		m_files.push_back(e);
 		m_files.back().size = size;
