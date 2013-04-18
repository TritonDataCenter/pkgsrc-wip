# $NetBSD$

BUILDLINK_TREE+=	hs-monads-tf

.if !defined(HS_MONADS_TF_BUILDLINK3_MK)
HS_MONADS_TF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-monads-tf+=	hs-monads-tf>=0.1.0.1
BUILDLINK_PKGSRCDIR.hs-monads-tf?=	../../wip/hs-monads-tf

.endif	# HS_MONADS_TF_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-monads-tf
