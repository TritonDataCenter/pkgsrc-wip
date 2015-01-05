# $NetBSD$
#

BUILDLINK_TREE+=	gmetadom

.if !defined(GMETADOM_BUILDLINK3_MK)
GMETADOM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gmetadom+=	gmetadom>=0.2.6
BUILDLINK_PKGSRCDIR.gmetadom?=	../../wip/gmetadom

.include "../../textproc/gdome2/buildlink3.mk"
.endif	# GMETADOM_BUILDLINK3_MK

BUILDLINK_TREE+=	-gmetadom
