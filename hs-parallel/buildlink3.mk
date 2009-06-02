# $NetBSD$

BUILDLINK_TREE+=	hs-parallel

.if !defined(HS_PARALLEL_BUILDLINK3_MK)
HS_PARALLEL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-parallel+=	hs-parallel>=1.1.0.1
BUILDLINK_PKGSRCDIR.hs-parallel?=	../../wip/hs-parallel
.endif	# HS_PARALLEL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-parallel
