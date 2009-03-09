# $NetBSD$
#

DISTNAME=	libtextcat-2.2
CATEGORIES=	textproc
MASTER_SITES=	http://software.wise-guys.nl/download/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://software.wise-guys.nl/libtextcat/
COMMENT=	Libtextcat library the Cavnar & Trenkle

PKG_DESTDIR_SUPPORT=	user-destdir

USE_DIRS+=	xdg-1.4
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/libtextcat

.include "../../mk/bsd.pkg.mk"
