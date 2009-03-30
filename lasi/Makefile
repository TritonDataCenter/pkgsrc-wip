# $NetBSD$
#

DISTNAME=	libLASi-1.1.0
PKGNAME=	liblasi-1.1.0
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lasi/}

MAINTAINER=	emil@math.su.se
HOMEPAGE=	http://lasi.sourceforge.net/
COMMENT=	C++ library for postscript stream output

PKG_DESTDIR_SUPPORT=	user-destdir

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	pkg-config

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
