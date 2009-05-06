# $NetBSD$

BUILDLINK_TREE+=	mapserver

.if !defined(MAPSERVER_BUILDLINK3_MK)
MAPSERVER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mapserver+=	mapserver>=4.4.2
BUILDLINK_PKGSRCDIR.mapserver?=	../../wip/mapserver

.include "../../mk/x11.buildlink3.mk"
.endif # MAPSERVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-mapserver
