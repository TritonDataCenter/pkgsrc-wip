# $NetBSD$

BUILDLINK_TREE+=	libdbusmenu-gtk

.if !defined(LIBDBUSMENU_GTK_BUILDLINK3_MK)
LIBDBUSMENU_GTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libdbusmenu-gtk+=	libdbusmenu-gtk>=12.10.2
BUILDLINK_PKGSRCDIR.libdbusmenu-gtk?=	../../wip/libdbusmenu-gtk

.include "../../wip/libdbusmenu-glib/buildlink3.mk"
.endif	# LIBDBUSMENU_GTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-libdbusmenu-gtk
