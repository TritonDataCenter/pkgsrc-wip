# $NetBSD$

BUILDLINK_TREE+=	tap-plugins

.if !defined(TAP_PLUGINS_BUILDLINK3_MK)
TAP_PLUGINS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tap-plugins+=	tap-plugins>=0.7.2
BUILDLINK_PKGSRCDIR.tap-plugins?=	../../wip/tap-plugins
.endif	# TAP_PLUGINS_BUILDLINK3_MK

BUILDLINK_TREE+=	-tap-plugins
