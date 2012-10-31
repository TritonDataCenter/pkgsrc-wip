# $NetBSD$
#

DISTNAME=	triangle
PKGNAME=	${DISTNAME}-${VERSION}
CATEGORIES=	math
MASTER_SITES=	http://www.netlib.org/voronoi/
EXTRACT_SUFX=	.zip

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://www.cs.cmu.edu/~quake/triangle.html
COMMENT=	Two-Dimensional Quality Mesh Generator and Delaunay Triangulator

WRKSRC=	${WRKDIR}

VERSION=	1.6
MAKE_FILE=	makefile

INSTALLATION_DIRS= bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${DISTNAME} ${DESTDIR}${PREFIX}/bin

.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
