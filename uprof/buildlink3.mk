# $NetBSD$

BUILDLINK_TREE+=	uprof

.if !defined(UPROF_BUILDLINK3_MK)
UPROF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.uprof+=	uprof>=0.3
BUILDLINK_PKGSRCDIR.uprof?=	../../wip/uprof

.include "../../mk/dlopen.buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif	# UPROF_BUILDLINK3_MK

BUILDLINK_TREE+=	-uprof
