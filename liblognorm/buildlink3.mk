# $NetBSD$

BUILDLINK_TREE+=	liblognorm

.if !defined(LIBLOGNORM_BUILDLINK3_MK)
LIBLOGNORM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.liblognorm+=	liblognorm>=0.3.0
BUILDLINK_ABI_DEPENDS.liblognorm+=	liblognorm>=0.3.0
BUILDLINK_PKGSRCDIR.liblognorm=		../../wip/liblognorm

.endif # LIBLOGNORM_BUILDLINK3_MK

BUILDLINK_TREE+=	-liblognorm
