# $NetBSD$

BUILDLINK_TREE+=	hs-rosezipper

.if !defined(HS_ROSEZIPPER_BUILDLINK3_MK)
HS_ROSEZIPPER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-rosezipper+=	hs-rosezipper>=0.2
BUILDLINK_ABI_DEPENDS.hs-rosezipper+=	hs-rosezipper>=0.2
BUILDLINK_PKGSRCDIR.hs-rosezipper?=	../../wip/hs-rosezipper
.endif	# HS_ROSEZIPPER_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-rosezipper
