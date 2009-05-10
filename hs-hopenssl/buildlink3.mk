# $NetBSD$

BUILDLINK_TREE+=	hs-hopenssl

.if !defined(HS_HOPENSSL_BUILDLINK3_MK)
HS_HOPENSSL_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.hs-hopenssl?=	build
BUILDLINK_API_DEPENDS.hs-hopenssl+=	hs-hopenssl>=1.2
BUILDLINK_PKGSRCDIR.hs-hopenssl?=	../../wip/hs-hopenssl

.endif # HS_HOPENSSL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hopenssl
