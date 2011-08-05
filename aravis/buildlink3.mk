# $NetBSD$

BUILDLINK_TREE+=	aravis

.if !defined(ARAVIS_BUILDLINK3_MK)
ARAVIS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.aravis+=	aravis>=0.1.0
BUILDLINK_PKGSRCDIR.aravis?=	../../category/aravis

.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif	# ARAVIS_BUILDLINK3_MK

BUILDLINK_TREE+=	-aravis
