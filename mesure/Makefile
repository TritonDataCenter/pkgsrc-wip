# $NetBSD$
#

DISTNAME=		mesure-0.2
CATEGORIES=		wip sysutils
MASTER_SITES=		ftp://ftp.nopcode.org/prj/mesure/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://www.nopcode.org/?t=mesure
COMMENT=		Tool to measure different kind of streams

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/mesure ${PREFIX}/bin/

USE_BUILDLINK3=		yes

.include "../../mk/bsd.pkg.mk"
