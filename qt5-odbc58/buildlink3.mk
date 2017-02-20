# $NetBSD: buildlink3.mk,v 1.12 2016/12/04 05:17:15 ryoon Exp $

BUILDLINK_TREE+=	qt5-odbc

.if !defined(QT5_ODBC_BUILDLINK3_MK)
QT5_ODBC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-odbc+=	qt5-odbc>=5.8.0
BUILDLINK_ABI_DEPENDS.qt5-odbc+=	qt5-odbc>=5.8.0
BUILDLINK_PKGSRCDIR.qt5-odbc?=	../../wip/qt5-odbc58

BUILDLINK_LIBDIRS.qt5-odbc+=		qt5/plugins

.include "../../wip/qt5-qtbase58/buildlink3.mk"
.endif	# QT5_ODBC_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-odbc
