# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-video-sdl-${VERSION}
COMMENT=	SDL (Simple DirectMedia Layer) bindings for GNU Radio

.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CMAKE_ARGS+=	-DENABLE_DEFAULT=False
CMAKE_ARGS+=	-DENABLE_GR_VIDEO_SDL=True
CMAKE_ARGS+=	-DSDL_INCLUDE_DIR=${PREFIX}/include/SDL

.include	"../../devel/SDL/buildlink3.mk"

.include	"../../mk/bsd.pkg.mk"
