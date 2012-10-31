# $NetBSD$
#

DISTNAME=	paxmirabilis-20120520
CATEGORIES=	archivers
MASTER_SITES=	http://www.mirbsd.org/MirOS/dist/mir/cpio/
EXTRACT_SUFX=	.cpio.gz

MAINTAINER=	bsiegert@NetBSD.org
HOMEPAGE=	http://launchpad.net/paxmirabilis
COMMENT=	Archiving utility for tar, cpio and ar
LICENSE=	miros

AUTO_MKDIRS=	yes

WRKSRC=		${WRKDIR}/pax
MAKE_ENV+=	OSTYPE=${OPSYS} MACHINE_OS=${OPSYS}
MAKE_ENV+=	${BSD_MAKE_ENV}

.include "../../mk/bsd.pkg.mk"
