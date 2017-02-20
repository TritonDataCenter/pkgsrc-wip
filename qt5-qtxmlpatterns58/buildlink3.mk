# $NetBSD: buildlink3.mk,v 1.12 2016/12/04 05:17:17 ryoon Exp $

BUILDLINK_TREE+=	qt5-qtxmlpatterns

.if !defined(QT5_QTXMLPATTERNS_BUILDLINK3_MK)
QT5_QTXMLPATTERNS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-qtxmlpatterns+=	qt5-qtxmlpatterns>=5.8.0
BUILDLINK_ABI_DEPENDS.qt5-qtxmlpatterns+=	qt5-qtxmlpatterns>=5.8.0
BUILDLINK_PKGSRCDIR.qt5-qtxmlpatterns?=	../../wip/qt5-qtxmlpatterns58

BUILDLINK_INCDIRS.qt5-qtxmlpatterns+=	qt5/include
BUILDLINK_LIBDIRS.qt5-qtxmlpatterns+=	qt5/lib
BUILDLINK_LIBDIRS.qt5-qtxmlpatterns+=	qt5/plugins

.include "../../wip/qt5-qtbase58/buildlink3.mk"
.endif	# QT5_QTXMLPATTERNS_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-qtxmlpatterns
