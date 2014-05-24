# $NetBSD$

BUILDLINK_TREE+=	hs-transformers-base

.if !defined(HS_TRANSFORMERS_BASE_BUILDLINK3_MK)
HS_TRANSFORMERS_BASE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-transformers-base+=	hs-transformers-base>=0.4.2
BUILDLINK_PKGSRCDIR.hs-transformers-base?=	../../wip/hs-transformers-base

.include "../../devel/hs-transformers/buildlink3.mk"
.endif	# HS_TRANSFORMERS_BASE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-transformers-base
