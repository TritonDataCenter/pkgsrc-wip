# $NetBSD$

BUILDLINK_TREE+=	exhume

.if !defined(EXHUME_BUILDLINK3_MK)
EXHUME_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.exhume+=	exhume>=1.3.5
BUILDLINK_PKGSRCDIR.exhume?=	../../wip/exhume

.include "../../wip/clhep/buildlink3.mk"
.endif	# EXHUME_BUILDLINK3_MK

BUILDLINK_TREE+=	-exhume
