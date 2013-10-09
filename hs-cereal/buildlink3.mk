# $NetBSD$

BUILDLINK_TREE+=	hs-cereal

.if !defined(HS_CEREAL_BUILDLINK3_MK)
HS_CEREAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-cereal+=	hs-cereal>=0.4
BUILDLINK_PKGSRCDIR.hs-cereal?=	../../wip/hs-cereal
.endif	# HS_CEREAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-cereal
