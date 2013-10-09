# $NetBSD$

BUILDLINK_TREE+=	libftdi1

.if !defined(LIBFTDI1_BUILDLINK3_MK)
LIBFTDI1_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libftdi1+=	libftdi1>=1.0
BUILDLINK_PKGSRCDIR.libftdi1?=	../../wip/libftdi1

.include "../../devel/libusb/buildlink3.mk"
.endif	# LIBFTDI1_BUILDLINK3_MK

BUILDLINK_TREE+=	-libftdi1
