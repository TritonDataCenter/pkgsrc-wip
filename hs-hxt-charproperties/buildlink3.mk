# $NetBSD$

BUILDLINK_TREE+=	hs-hxt-charproperties

.if !defined(HS_HXT_CHARPROPERTIES_BUILDLINK3_MK)
HS_HXT_CHARPROPERTIES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hxt-charproperties+=	hs-hxt-charproperties>=9.1.1
BUILDLINK_ABI_DEPENDS.hs-hxt-charproperties+=	hs-hxt-charproperties>=9.1.1.1
BUILDLINK_PKGSRCDIR.hs-hxt-charproperties?=	../../wip/hs-hxt-charproperties
.endif	# HS_HXT_CHARPROPERTIES_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hxt-charproperties
