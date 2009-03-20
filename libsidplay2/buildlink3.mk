# $NetBSD$
#

BUILDLINK_TREE+=	libsidplay

.if !defined(LIBSIDPLAY_BUILDLINK3_MK)
LIBSIDPLAY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libsidplay+=	libsidplay>=20060528
BUILDLINK_PKGSRCDIR.libsidplay?=	../../wip/libsidplay2
.endif # LIBSIDPLAY_BUILDLINK3_MK

BUILDLINK_TREE+=	-libsidplay
