# $NetBSD$

BUILDLINK_TREE+=	bluez-libs

.if !defined(BLUEZ_LIBS_BUILDLINK3_MK)
BLUEZ_LIBS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bluez-libs+=	bluez-libs>=3.0
BUILDLINK_PKGSRCDIR.bluez-libs?=	../../wip/bluez-libs

.endif # BLUEZ_LIBS

BUILDLINK_TREE+=	-bluez-libs
