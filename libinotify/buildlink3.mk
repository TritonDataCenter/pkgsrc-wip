# $NetBSD$

BUILDLINK_TREE+=	libinotify

.if !defined(LIBINOTIFY_BUILDLINK3_MK)
LIBINOTIFY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libinotify+=	libinotify>=20120113
BUILDLINK_PKGSRCDIR.libinotify?=	../../wip/libinotify
.endif	# LIBINOTIFY_BUILDLINK3_MK

BUILDLINK_TREE+=	-libinotify
