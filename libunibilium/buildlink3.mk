# $NetBSD$
BUILDLINK_TREE+=	libunibilium

.if !defined(LIBUNIBILIUM_BUILDLINK3_MK)
LIBUNIBILIUM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libunibilium+=	libunibilium>=1.1.0
BUILDLINK_PKGSRCDIR.libunibilium?=	../../wip/libunibilium
.endif	# LIBUNIBILIUM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libunibilium
