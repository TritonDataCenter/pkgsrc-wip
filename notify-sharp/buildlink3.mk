# $NetBSD$

BUILDLINK_TREE+=	notify-sharp

.if !defined(NOTIFY_SHARP_BUILDLINK3_MK)
NOTIFY_SHARP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.notify-sharp+=	notify-sharp>=0.4.0
BUILDLINK_ABI_DEPENDS.notify-sharp?=	notify-sharp>=0.4.0r3032nb1
BUILDLINK_PKGSRCDIR.notify-sharp?=	../../wip/notify-sharp


.include "../../lang/mono2/buildlink3.mk"
.include "../../sysutils/ndesk-dbus/buildlink3.mk"
.include "../../sysutils/ndesk-dbus-glib/buildlink3.mk"

.endif	# NOTIFY_SHARP_BUILDLINK3_MK

BUILDLINK_TREE+=	-notify-sharp
