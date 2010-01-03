# $NetBSD$

BUILDLINK_TREE+=	glut

.if !defined(GLUT_BUILDLINK3_MK)
GLUT_BUILDLINK3_MK:=

BUILDLINK_ABI_DEPENDS.glut+=	glut>=7.7
BUILDLINK_API_DEPENDS.glut+=	glut>=7.7
BUILDLINK_PKGSRCDIR.glut?=	../../wip/glut

.include "../../wip/glu/buildlink3.mk"
.endif	# GLUT_BUILDLINK3_MK

BUILDLINK_TREE+=	-glut
