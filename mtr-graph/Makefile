# $NetBSD$

CATEGORIES=	net
PKGBASE=	mtr085
PKGVERSION=	151
PKGREVISION=	21
PKGNAME=	${PKGBASE}-${PKGVERSION}
DISTNAME=	${PKGBASE}-${GITHUB_HASH}
MASTER_SITES=	https://github.com/${GITHUB_USER}/${PKGBASE}/tarball/${GITHUB_HASH}/
WRKSRC=		${WRKDIR}/${GITHUB_USER}-${PKGBASE}-${GITHUB_HASH}

GITHUB_HASH=	196b040
GITHUB_USER=	yvs2014

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.bitwizard.nl/mtr/
COMMENT=	Traceroute and ping in a single network diagnostic tool
LICENSE=	gnu-gpl-v2

CONFLICTS=	mtr-*

GNU_CONFIGURE=		YES
USE_TOOLS+=		autoconf autoreconf automake
INSTALLATION_DIRS=	${PKGMANDIR}/man8 sbin share/doc/mtr

.include "options.mk"

SPECIAL_PERMS=	sbin/mtr ${SETUID_ROOT_PERMS}

pre-configure:
	autoreconf -fi ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mtr ${DESTDIR}${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/mtr.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_DATA} ${WRKSRC}/SECURITY ${DESTDIR}${PREFIX}/share/doc/mtr

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
