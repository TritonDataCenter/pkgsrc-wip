# $NetBSD$

BUILDLINK_TREE+=	hs-groupoids

.if !defined(HS_GROUPOIDS_BUILDLINK3_MK)
HS_GROUPOIDS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-groupoids+=	hs-groupoids>=3.0.1.1
BUILDLINK_PKGSRCDIR.hs-groupoids?=	../../wip/hs-groupoids

.endif	# HS_GROUPOIDS_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-groupoids
