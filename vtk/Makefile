# $NetBSD$
#

DISTNAME=		VTK-4.2-LatestRelease
PKGNAME=		vtk-4.2
WRKSRC=			${WRKDIR}/VTK
CATEGORIES=		graphics
MASTER_SITES=		http://www.vtk.org/files/release/4.2/

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://www.vtk.org/
COMMENT=		Visualization toolkit

BUILD_DEPENDS=		cmake>=1.6.6:../../devel/cmake

do-build:
	cd ${WRKSRC} && cmake . -DCMAKE_INSTALL_PREFIX:STRING=${PREFIX} \
		-DPYTHON_INCLUDE_PATH:STRING=${PREFIX}/${PYINC} \
		-DPYTHON_LIBRARY:STRING=${PREFIX}/lib/libpython${PYVERSSUFFIX}.so && make

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
