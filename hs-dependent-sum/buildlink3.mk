# $NetBSD$

BUILDLINK_TREE+=	hs-dependent-sum

.if !defined(HS_DEPENDENT_SUM_BUILDLINK3_MK)
HS_DEPENDENT_SUM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-dependent-sum+=	hs-dependent-sum>=0.2.0
BUILDLINK_ABI_DEPENDS.hs-dependent-sum+=	hs-dependent-sum>=0.2.0.1
BUILDLINK_PKGSRCDIR.hs-dependent-sum?=	../../wip/hs-dependent-sum
.endif	# HS_DEPENDENT_SUM_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-dependent-sum
