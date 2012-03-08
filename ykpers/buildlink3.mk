# $NetBSD$

BUILDLINK_TREE+=	ykpers

.if !defined(YKPERS_BUILDLINK3_MK)
YKPERS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ykpers+=	ykpers>=1.6.3
BUILDLINK_PKGSRCDIR.ykpers?=	../../wip/ykpers

.include "../../wip/libyubikey/buildlink3.mk"
.include "../../devel/libusb/buildlink3.mk"
.endif	# YKPERS_BUILDLINK3_MK

BUILDLINK_TREE+=	-ykpers
