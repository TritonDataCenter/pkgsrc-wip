# $NetBSD$

BUILDLINK_TREE+=	hs-GLUT

.if !defined(HS_GLUT_BUILDLINK3_MK)
HS_GLUT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-GLUT+=	hs-GLUT>=2.2.2.0
BUILDLINK_PKGSRCDIR.hs-GLUT?=	../../wip/hs-GLUT

.include "../../wip/hs-OpenGL/buildlink3.mk"
.include "../../wip/hs-StateVar/buildlink3.mk"
.include "../../wip/hs-Tensor/buildlink3.mk"
.endif	# HS_GLUT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-GLUT
