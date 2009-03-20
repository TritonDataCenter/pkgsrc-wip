# $NetBSD$

BUILDLINK_TREE+=	hs-parallel

.if !defined(HS_PARALLEL_BUILDLINK3_MK)
HS_PARALLEL_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.hs-parallel?=	build
BUILDLINK_API_DEPENDS.hs-parallel+=	hs-parallel>=1.1.0.0
BUILDLINK_PKGSRCDIR.hs-parallel?=	../../wip/hs-parallel
.endif # HS_PARALLEL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-parallel
