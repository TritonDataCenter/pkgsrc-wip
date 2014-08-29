# $NetBSD$

BUILDLINK_TREE+=	hs-network-conduit

.if !defined(HS_NETWORK_CONDUIT_BUILDLINK3_MK)
HS_NETWORK_CONDUIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-network-conduit+=	hs-network-conduit>=1.0.0
BUILDLINK_PKGSRCDIR.hs-network-conduit?=	../../wip/hs-network-conduit

.include "../../wip/hs-conduit/buildlink3.mk"
.include "../../devel/hs-lifted-base/buildlink3.mk"
.include "../../devel/hs-monad-control/buildlink3.mk"
.include "../../net/hs-network/buildlink3.mk"
.include "../../devel/hs-transformers/buildlink3.mk"
.endif	# HS_NETWORK_CONDUIT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-network-conduit
