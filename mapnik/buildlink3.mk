# $NetBSD$

BUILDLINK_TREE+=	mapnik

.if !defined(MAPNIK_BUILDLINK3_MK)
MAPNIK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mapnik+=	mapnik>=0.4.0
BUILDLINK_PKGSRCDIR.mapnik?=	../../wip/mapnik

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
#.include "../../devel/zlib/buildlink3.mk"
#.include "../../graphics/freetype2/buildlink3.mk"
#.include "../../graphics/jpeg/buildlink3.mk"
#.include "../../graphics/png/buildlink3.mk"
#.include "../../graphics/tiff/buildlink3.mk"
#.include "../../misc/proj/buildlink3.mk"
.endif # MAPNIK_BUILDLINK3_MK

BUILDLINK_TREE+=	-mapnik
