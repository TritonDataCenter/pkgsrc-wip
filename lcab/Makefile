# $NetBSD: Makefile,v 1.2 2004/06/08 10:06:34 plunky $
#

DISTNAME=		lcab-1.0b10
CATEGORIES=		archivers
MASTER_SITES=		http://www.geekshop.be/rien/lcab/files/

MAINTAINER=		plunky@rya-online.net
HOMEPAGE=		http://www.geekshop.be/rien/lcab
COMMENT=		Microsoft cabinet (.CAB) file creator

GNU_CONFIGURE=		yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/lcab.1 ${PREFIX}/man/man1/lcab.1

.include "../../mk/bsd.pkg.mk"
