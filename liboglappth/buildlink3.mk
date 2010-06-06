# $NetBSD$

BUILDLINK_TREE+=	liboglappth

.if !defined(LIBOGLAPPTH_BUILDLINK3_MK)
LIBOGLAPPTH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.liboglappth+=	liboglappth>=0.98
BUILDLINK_PKGSRCDIR.liboglappth?=	../../wip/liboglappth

.include "../../graphics/glut/buildlink3.mk"
.endif	# LIBOGLAPPTH_BUILDLINK3_MK

BUILDLINK_TREE+=	-liboglappth
