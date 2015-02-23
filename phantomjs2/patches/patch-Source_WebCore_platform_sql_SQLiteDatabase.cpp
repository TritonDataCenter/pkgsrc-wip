$NetBSD: patch-Source_WebCore_platform_sql_SQLiteDatabase.cpp,v 1.1 2014/12/30 17:23:48 adam Exp $

--- src/qt/qtwebkit/Source/WebCore/platform/sql/SQLiteDatabase.cpp.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Source/WebCore/platform/sql/SQLiteDatabase.cpp
@@ -127,7 +127,7 @@ void SQLiteDatabase::interrupt()
         if (!m_db)
             return;
         sqlite3_interrupt(m_db);
-        yield();
+        WTF::yield();
     }
 
     m_lockingMutex.unlock();
