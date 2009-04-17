# $NetBSD$

BUILDLINK_TREE+=	libnjb

.if !defined(LIBNJB_BUILDLINK3_MK)
LIBNJB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libnjb+=	libnjb>=2.2.6
BUILDLINK_PKGSRCDIR.libnjb?=	../../wip/libnjb

.include "../../devel/libusb/buildlink3.mk"
.endif # LIBNJB_BUILDLINK3_MK

BUILDLINK_TREE+=	-libnjb
