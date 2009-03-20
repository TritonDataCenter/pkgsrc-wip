# $NetBSD: buildlink3.mk,v 1.1.1.1 2004/04/19 18:36:02 xtraeme Exp $

BUILDLINK_TREE+=	OpenGLUT

BUILDLINK_API_DEPENDS.OpenGLUT+=	OpenGLUT>=0.6.0
BUILDLINK_PKGSRCDIR.OpenGLUT?=	../../wip/OpenGLUT

MESA_REQD+=     6.0

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../mk/x11.buildlink3.mk"
.endif # OPENGLUT_BUILDLINK3_MK

BUILDLINK_TREE+=	-OpenGLUT
