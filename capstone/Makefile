# $NetBSD$

DISTNAME=	capstone-3.0
CATEGORIES=	devel
MASTER_SITES=	http://www.capstone-engine.org/download/${PKGVERSION}/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.capstone-engine.org/
COMMENT=	lightweight multi-platform, multi-architecture disassembly framework
LICENSE=	modified-bsd	

PKGCONFIG_OVERRIDE+=	capstone.pc
USE_TOOLS+=	gmake

.include "../../mk/bsd.pkg.mk"
