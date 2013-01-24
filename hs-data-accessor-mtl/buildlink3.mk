# $NetBSD$

BUILDLINK_TREE+=	hs-data-accessor-mtl

.if !defined(HS_DATA_ACCESSOR_MTL_BUILDLINK3_MK)
HS_DATA_ACCESSOR_MTL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-data-accessor-mtl+=	hs-data-accessor-mtl>=0.2.0.3
BUILDLINK_PKGSRCDIR.hs-data-accessor-mtl?=	../../wip/hs-data-accessor-mtl

.include "../../wip/hs-data-accessor/buildlink3.mk"
.include "../../wip/hs-mtl/buildlink3.mk"
.endif	# HS_DATA_ACCESSOR_MTL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-data-accessor-mtl
