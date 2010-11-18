# $NetBSD$

BUILDLINK_TREE+=	ftgl

.if !defined(FTGL_BUILDLINK3_MK)
FTGL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ftgl+=	ftgl>=2.1.3rc5
BUILDLINK_PKGSRCDIR.ftgl?=	../../wip/ftgl

#.include "../../graphics/freetype2/buildlink3.mk"
#.include "../../graphics/glu/buildlink3.mk"
#.include "../../graphics/MesaLib/buildlink3.mk"
#.include "../../graphics/glut/buildlink3.mk"
#.include "../../devel/zlib/buildlink3.mk"
.endif	# FTGL_BUILDLINK3_MK

BUILDLINK_TREE+=	-ftgl
