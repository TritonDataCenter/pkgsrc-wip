# $NetBSD$

BUILDLINK_TREE+=	liblognorm

.if !defined(LIBLOGNORM_BUILDLINK3_MK)
LIBLOGNORM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.liblognorm+=	liblognorm>=1.0.0
BUILDLINK_ABI_DEPENDS.liblognorm+=	liblognorm>=1.0.0
BUILDLINK_PKGSRCDIR.liblognorm=		../../wip/liblognorm1

.endif # LIBLOGNORM_BUILDLINK3_MK

BUILDLINK_TREE+=	-liblognorm
