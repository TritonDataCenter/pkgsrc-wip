# $NetBSD$

DISTNAME=		QUANTA-0.3
CATEGORIES=		net
MASTER_SITES=		http://www.evl.uic.edu/cavern/quanta/downloads/

MAINTAINER=		pkgsrc@bjan.freeshell.org
HOMEPAGE=		http://www.evl.uic.edu/cavern/quanta/
COMMENT=		Toolkit for extremely high bandwidth networking

WRKSRC=			${WRKDIR}/QUANTA_0.3
USE_BUILDLINK2=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ENV+=		CXXFLAGS="${PTHREAD_CFLAGS}"
USE_GNU_TOOLS+=		make

.include "../../mk/pthread.buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
