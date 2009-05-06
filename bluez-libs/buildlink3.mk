# $NetBSD$

BUILDLINK_TREE+=	bluez-libs

BUILDLINK_API_DEPENDS.bluez-libs+=	bluez-libs>=3.0
BUILDLINK_PKGSRCDIR.bluez-libs?=	../../wip/bluez-libs

BUILDLINK_TREE+=	-bluez-libs
