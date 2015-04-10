# $NetBSD$

BUILDLINK_TREE+=	libdbusmenu-glib

.if !defined(LIBDBUSMENU_GLIB_BUILDLINK3_MK)
LIBDBUSMENU_GLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libdbusmenu-glib+=	libdbusmenu-glib>=12.10.2
BUILDLINK_PKGSRCDIR.libdbusmenu-glib?=	../../wip/libdbusmenu-glib

.include "../../devel/glib2/buildlink3.mk"
.endif	# LIBDBUSMENU_GLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-libdbusmenu-glib
