# $NetBSD: buildlink3.mk,v 1.8 2011/01/13 13:36:56 wiz Exp $

BUILDLINK_TREE+=	kde-runtime

.if !defined(KDE_RUNTIME_BUILDLINK3_MK)
KDE_RUNTIME_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kde-runtime+=	kde-runtime4>=4.0.0
BUILDLINK_ABI_DEPENDS.kde-runtime?=	kde-runtime4>=4.5.4nb1
BUILDLINK_PKGSRCDIR.kde-runtime?=	../../wip/kde-runtime4

.include "../../wip/kdelibs4/buildlink3.mk"
.endif # KDE_RUNTIME_BUILDLINK3_MK

BUILDLINK_TREE+=	-kde-runtime
