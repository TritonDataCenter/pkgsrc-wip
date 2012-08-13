# $NetBSD$

BUILDLINK_TREE+=	polarssl

.if !defined(POLARSSL_BUILDLINK3_MK)
POLARSSL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.polarssl+=	polarssl>=0.10.0
BUILDLINK_PKGSRCDIR.polarssl?=	../../wip/polarssl

.endif # POLARSSL_BUILDLINK3_MK

BUILDLINK_TREE+=	-polarssl
