# $NetBSD: Makefile-example,v 1.17 2008/05/29 08:34:26 abs Exp $

DISTNAME=	udns_0.0.9
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	net
MASTER_SITES=	http://www.corpit.ru/mjt/udns/

MAINTAINER=	eric@cirr.com
HOMEPAGE=	http://www.corpit.ru/mjt/udns.html
COMMENT=	Lightweight DNS resolver supporting asynchronous queries

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

USE_LIBTOOL=		yes
HAS_CONFIGURE=		yes
INSTALLATION_DIRS=	bin lib include ${PKGMANDIR}/man1 ${PKGMANDIR}/man3

.include "options.mk"

do-install:
	${LIBTOOL} --mode=install ${INSTALL_DATA} \
		${WRKSRC}/libudns.la ${DESTDIR}${PREFIX}/lib
	${LIBTOOL} --mode=install ${INSTALL_PROGRAM} \
		${WRKSRC}/dnsget ${DESTDIR}${PREFIX}/bin
	${LIBTOOL} --mode=install ${INSTALL_PROGRAM} \
		${WRKSRC}/rblcheck ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/udns.h ${DESTDIR}${PREFIX}/include
	${INSTALL_MAN} ${WRKSRC}/udns.3 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man3
	${INSTALL_MAN} ${WRKSRC}/dnsget.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/rblcheck.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
