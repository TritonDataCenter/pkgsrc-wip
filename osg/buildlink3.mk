# $NetBSD: buildlink3.mk,v 1.40 2015/06/30 10:02:22 ryoon Exp $

BUILDLINK_TREE+=	osg

.if !defined(OSG_BUILDLINK3_MK)
OSG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.osg+=	osg>=2.8.3
BUILDLINK_ABI_DEPENDS.osg+=	osg>=3.0.1nb37
BUILDLINK_PKGSRCDIR.osg?=	../../wip/osg

.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/jasper/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/giflib/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../multimedia/ffmpeg2/buildlink3.mk"
.endif	# OSG_BUILDLINK3_MK

BUILDLINK_TREE+=	-osg
