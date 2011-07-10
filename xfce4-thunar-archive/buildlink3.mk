# $NetBSD$

BUILDLINK_TREE+=	xfce4-thunar-archive-plugin

.if !defined(XFCE4_THUNAR_ARCHIVE_PLUGIN_BUILDLINK3_MK)
XFCE4_THUNAR_ARCHIVE_PLUGIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-thunar-archive-plugin+=	xfce4-thunar-archive-plugin>=0.3.0
BUILDLINK_PKGSRCDIR.xfce4-thunar-archive-plugin?=	../../wip/xfce4-thunar-archive

.endif	# XFCE4_THUNAR_ARCHIVE_PLUGIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-thunar-archive-plugin
