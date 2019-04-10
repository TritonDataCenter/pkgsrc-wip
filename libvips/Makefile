# $NetBSD$

DISTNAME=	vips-8.7.4
PKGNAME=	lib${DISTNAME}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=libvips/}
GITHUB_PROJECT=	libvips
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	base@atomicules.co.uk
HOMEPAGE=	http://jcupitt.github.io/libvips/
COMMENT=	Demand-driven, horizontally threaded image processing lib
LICENSE=	gnu-lgpl-v2.1

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

PKGCONFIG_OVERRIDE+=	vips-cpp.pc.in
PKGCONFIG_OVERRIDE+=	vips.pc.in
PKGCONFIG_OVERRIDE+=	vipsCC.pc.in

REPLACE_PYTHON+=	tools/vipsprofile

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libgsf/buildlink3.mk"
.include "../../graphics/giflib/buildlink3.mk"
.include "../../graphics/lcms2/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
# XXX: currently missing a .pc file so not found
#.include "../../graphics/libimagequant/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../graphics/libwebp/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../print/poppler-glib/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
