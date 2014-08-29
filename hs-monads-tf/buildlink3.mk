# $NetBSD$

BUILDLINK_TREE+=	hs-monads-tf

.if !defined(HS_MONADS_TF_BUILDLINK3_MK)
HS_MONADS_TF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-monads-tf+=	hs-monads-tf>=0.1.0
BUILDLINK_ABI_DEPENDS.hs-monads-tf+=	hs-monads-tf>=0.1.0.2
BUILDLINK_PKGSRCDIR.hs-monads-tf?=	../../wip/hs-monads-tf

.include "../../devel/hs-transformers/buildlink3.mk"
.endif	# HS_MONADS_TF_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-monads-tf
