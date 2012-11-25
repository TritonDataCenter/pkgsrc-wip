# $NetBSD$
#

DISTNAME=		ADMsmb_0.3
PKGNAME=		admsmb-0.3
CATEGORIES=		security
MASTER_SITES=		http://www.void.irq.org/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.void.irq.org/
COMMENT=		Security scanner for Samba

BUILD_TARGET=		ADMsmb

pre-build:
	cd ${WRKSRC} && ${MAKE} clean

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ADMsmb ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
