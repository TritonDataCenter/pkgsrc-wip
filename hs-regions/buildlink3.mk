# $NetBSD$

BUILDLINK_TREE+=	hs-regions

.if !defined(HS_REGIONS_BUILDLINK3_MK)
HS_REGIONS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-regions+=	hs-regions>=0.9
BUILDLINK_PKGSRCDIR.hs-regions?=	../../wip/hs-regions

.include "../../wip/hs-base-unicode-symbols/buildlink3.mk"
.include "../../devel/hs-monad-control/buildlink3.mk"
.include "../../devel/hs-transformers/buildlink3.mk"
.endif	# HS_REGIONS_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-regions
