# $NetBSD$

BUILDLINK_TREE+=	hs-bindings-DSL

.if !defined(HS_BINDINGS_DSL_BUILDLINK3_MK)
HS_BINDINGS_DSL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-bindings-DSL+=	hs-bindings-DSL>=1.0.10
BUILDLINK_ABI_DEPENDS.hs-bindings-DSL+=	hs-bindings-DSL>=1.0.10
BUILDLINK_PKGSRCDIR.hs-bindings-DSL?=	../../wip/hs-bindings-DSL
.endif	# HS_BINDINGS_DSL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-bindings-DSL
