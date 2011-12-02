# $NetBSD$

BUILDLINK_TREE+=	hs-failure

.if !defined(HS_FAILURE_BUILDLINK3_MK)
HS_FAILURE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-failure+=	hs-failure>=0.1.0
BUILDLINK_PKGSRCDIR.hs-failure?=	../../wip/hs-failure
.endif	# HS_FAILURE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-failure
