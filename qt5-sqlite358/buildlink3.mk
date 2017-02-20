# $NetBSD: buildlink3.mk,v 1.11 2016/12/04 05:17:17 ryoon Exp $

BUILDLINK_TREE+=	qt5-sqlite3

.if !defined(QT5_SQLITE3_BUILDLINK3_MK)
QT5_SQLITE3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-sqlite3+=	qt5-sqlite3>=5.8.0
BUILDLINK_ABI_DEPENDS.qt5-sqlite3+=	qt5-sqlite3>=5.8.0
BUILDLINK_PKGSRCDIR.qt5-sqlite3?=	../../wip/qt5-sqlite358

BUILDLINK_LIBDIRS.qt5-sqlite3+=		qt5/plugins

.include "../../wip/qt5-qtbase58/buildlink3.mk"
.endif	# QT5_SQLITE3_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-sqlite3
