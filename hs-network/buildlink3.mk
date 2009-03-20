# $NetBSD$

BUILDLINK_TREE+=	hs-network

.if !defined(HS_NETWORK_BUILDLINK3_MK)
HS_NETWORK_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.hs-network?=	build
BUILDLINK_API_DEPENDS.hs-network+=	hs-network>=2.2.0.1
BUILDLINK_PKGSRCDIR.hs-network?=	../../wip/hs-network

.include "../../wip/parsec/buildlink3.mk"
.endif # HS_NETWORK_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-network
