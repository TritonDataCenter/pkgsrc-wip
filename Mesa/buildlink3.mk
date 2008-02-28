# $NetBSD: buildlink3.mk,v 1.5 2004/03/23 05:29:38 jlam Exp $

BUILDLINK_PREFIX.Mesa=	${BUILDLINK_PREFIX.MesaLib}

.include "../../wip/MesaLib/buildlink3.mk"
.include "../../wip/glu/buildlink3.mk"
.include "../../wip/glut/buildlink3.mk"
