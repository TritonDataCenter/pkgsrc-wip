# $NetBSD$

DISTNAME=	yaml-cpp-0.3.0
CATEGORIES=	textproc
MASTER_SITES=	http://yaml-cpp.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/yaml-cpp/
COMMENT=	YAML 1.2 parser and emitter in C++ (0.3 API)
LICENSE=	mit

USE_CMAKE=		yes
USE_LANGUAGES+=		c c++
WRKSRC=		${WRKDIR}/yaml-cpp

MAKE_JOBS_SAFE=		no

PKGCONFIG_OVERRIDE+=	yaml-cpp.pc.cmake

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
