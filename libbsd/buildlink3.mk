# $NetBSD$

BUILDLINK_TREE+=	libbsd


# check if available on this platform
#
.include "Makefile.common"

.if defined(USE_LIBBSD) && !defined(LIBBSD_BUILDLINK3_MK)
LIBBSD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libbsd+=	libbsd>=0.4.2
BUILDLINK_PKGSRCDIR.libbsd?=	../../wip/libbsd
.endif	# LIBBSD_BUILDLINK3_MK

BUILDLINK_TREE+=	-libbsd
