# $NetBSD: buildlink3.mk,v 1.8 2013/09/30 11:17:32 obache Exp $

BUILDLINK_TREE+=	dconf

.if !defined(DCONF_BUILDLINK3_MK)
DCONF_BUILDLINK3_MK:=

BUILDLINK_ABI_DEPENDS.dconf+=	dconf>=0.24.0
BUILDLINK_PKGSRCDIR.dconf?=	../../wip/dconf

.include "../../devel/glib2/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.endif	# DCONF_BUILDLINK3_MK

BUILDLINK_TREE+=	-dconf
