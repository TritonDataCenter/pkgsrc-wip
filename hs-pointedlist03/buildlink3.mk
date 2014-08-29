# $NetBSD$

BUILDLINK_TREE+=	hs-pointedlist03

.if !defined(HS_POINTEDLIST03_BUILDLINK3_MK)
HS_POINTEDLIST03_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-pointedlist03+=	hs-pointedlist03>=0.3.5
BUILDLINK_ABI_DEPENDS.hs-pointedlist03+=	hs-pointedlist03>=0.3.5
BUILDLINK_PKGSRCDIR.hs-pointedlist03?=	../../wip/hs-pointedlist03

.include "../../wip/hs-data-accessor/buildlink3.mk"
.endif	# HS_POINTEDLIST03_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-pointedlist03
