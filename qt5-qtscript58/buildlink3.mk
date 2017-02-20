# $NetBSD: buildlink3.mk,v 1.16 2017/01/21 20:06:46 ryoon Exp $

BUILDLINK_TREE+=	qt5-qtscript

.if !defined(QT5_QTSCRIPT_BUILDLINK3_MK)
QT5_QTSCRIPT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-qtscript+=	qt5-qtscript>=5.8.0
BUILDLINK_ABI_DEPENDS.qt5-qtscript+=	qt5-qtscript>=5.8.0
BUILDLINK_PKGSRCDIR.qt5-qtscript?=	../../wip/qt5-qtscript58

BUILDLINK_INCDIRS.qt5-qtscript+=	qt5/include
BUILDLINK_LIBDIRS.qt5-qtscript+=	qt5/lib
BUILDLINK_LIBDIRS.qt5-qtscript+=	qt5/plugins

.include "../../wip/qt5-qttools58/buildlink3.mk"
.endif	# QT5_QTSCRIPT_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-qtscript
