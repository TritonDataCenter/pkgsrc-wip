# $NetBSD: buildlink3.mk,v 1.1.1.1 2008/11/03 10:59:46 markd Exp $

BUILDLINK_TREE+=	phonon

.if !defined(PHONON_BUILDLINK3_MK)
PHONON_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.phonon+=	phonon>=4.1.83
BUILDLINK_PKGSRCDIR.phonon?=	../../wip/phonon

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-qdbus/buildlink3.mk"
.endif # PHONON_BUILDLINK3_MK

BUILDLINK_TREE+=	-phonon
