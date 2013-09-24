# $NetBSD$

BUILDLINK_TREE+=	hs-nats

.if !defined(HS_NATS_BUILDLINK3_MK)
HS_NATS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-nats+=	hs-nats>=0.1.2
BUILDLINK_PKGSRCDIR.hs-nats?=	../../wip/hs-nats
.endif	# HS_NATS_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-nats
