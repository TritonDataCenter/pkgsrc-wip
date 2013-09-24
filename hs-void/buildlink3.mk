# $NetBSD$

BUILDLINK_TREE+=	hs-void

.if !defined(HS_VOID_BUILDLINK3_MK)
HS_VOID_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-void+=	hs-void>=0.6.1
BUILDLINK_PKGSRCDIR.hs-void?=	../../wip/hs-void

.include "../../wip/hs-hashable/buildlink3.mk"
.include "../../wip/hs-semigroups/buildlink3.mk"
.endif	# HS_VOID_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-void
