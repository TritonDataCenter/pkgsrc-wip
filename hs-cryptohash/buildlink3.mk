# $NetBSD$

BUILDLINK_TREE+=	hs-cryptohash

.if !defined(HS_CRYPTOHASH_BUILDLINK3_MK)
HS_CRYPTOHASH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-cryptohash+=	hs-cryptohash>=0.9.0
BUILDLINK_PKGSRCDIR.hs-cryptohash?=	../../wip/hs-cryptohash
.endif	# HS_CRYPTOHASH_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-cryptohash
