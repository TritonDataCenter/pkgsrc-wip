# $NetBSD$

BUILDLINK_TREE+=	hs-blaze-textual

.if !defined(HS_BLAZE_TEXTUAL_BUILDLINK3_MK)
HS_BLAZE_TEXTUAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-blaze-textual+=	hs-blaze-textual>=0.2.0
BUILDLINK_PKGSRCDIR.hs-blaze-textual?=	../../wip/hs-blaze-textual

.include "../../wip/hs-blaze-builder/buildlink3.mk"
.include "../../wip/hs-text/buildlink3.mk"
.include "../../wip/hs-vector/buildlink3.mk"
.endif	# HS_BLAZE_TEXTUAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-blaze-textual
