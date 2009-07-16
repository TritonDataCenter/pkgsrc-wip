# $NetBSD$
#

DISTNAME=	arpdig-0.5.2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=arpdig/}

MAINTAINER=	prudhvi-krishna-bsd@surapaneni.in
HOMEPAGE=	http://downloads.sourceforge.net/sourceforge/arpdig/
COMMENT=	Arp digger utility

PKG_DESTDIR_SUPPORT=	user-destdir
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arpdig ${PREFIX}/bin/arpdig
	${INSTALL_MAN} ${WRKSRC}/arpdig.1 ${PREFIX}/${PKGMANDIR}/man1
.include "../../mk/bsd.pkg.mk"
