# $NetBSD$

BUILDLINK_TREE+=	hs-markov-chain

.if !defined(HS_MARKOV_CHAIN_BUILDLINK3_MK)
HS_MARKOV_CHAIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-markov-chain+=	hs-markov-chain>=0.0.3
BUILDLINK_PKGSRCDIR.hs-markov-chain?=	../../wip/hs-markov-chain

.include "../../wip/hs-transformers/buildlink3.mk"
.endif	# HS_MARKOV_CHAIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-markov-chain
