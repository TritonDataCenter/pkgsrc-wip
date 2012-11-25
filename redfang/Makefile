# $NetBSD$
#

DISTNAME=		redfang.2.5
PKGNAME=		${DISTNAME:S/./-/1}
CATEGORIES=		security
MASTER_SITES=		http://www.blackops.cn/tools/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.blackops.cn/tools/\#tools
COMMENT=		Scan for hidden bluetooth devices

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
USE_TOOLS+=		pkg-config

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fang ${DESTDIR}${PREFIX}/bin/redfang

.include "../../wip/bluez-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
