# $NetBSD$

BUILDLINK_TREE+=	libghemical

.if !defined(LIBGHEMICAL_BUILDLINK3_MK)
LIBGHEMICAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libghemical+=	libghemical>=2.99.1
BUILDLINK_PKGSRCDIR.libghemical?=	../../wip/libghemical

.include "../../graphics/glut/buildlink3.mk"
.endif	# LIBGHEMICAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libghemical
