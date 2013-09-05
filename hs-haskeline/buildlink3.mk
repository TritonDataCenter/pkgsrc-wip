# $NetBSD$

BUILDLINK_TREE+=	hs-haskeline

.if !defined(HS_HASKELINE_BUILDLINK3_MK)
HS_HASKELINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-haskeline+=	hs-haskeline>=0.7
BUILDLINK_PKGSRCDIR.hs-haskeline?=	../../wip/hs-haskeline

.include "../../wip/hs-terminfo/buildlink3.mk"
.endif	# HS_HASKELINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-haskeline
