$NetBSD$

--- writerfilter/source/dmapper/DomainMapperTableManager.cxx.orig	2012-03-27 16:22:01.000000000 +0000
+++ writerfilter/source/dmapper/DomainMapperTableManager.cxx
@@ -442,7 +442,7 @@ void DomainMapperTableManager::endOfRowA
     double nFullWidth = m_nTableWidth;
     //the positions have to be distibuted in a range of 10000
     const double nFullWidthRelative = 10000.;
-    if( pTableGrid->size() == nGrids )
+    if( pTableGrid->size() == nGrids && m_nCell > 0 )
     {
         uno::Sequence< text::TableColumnSeparator > aSeparators( m_nCell - 1 );
         text::TableColumnSeparator* pSeparators = aSeparators.getArray();
