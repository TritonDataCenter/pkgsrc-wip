# $NetBSD$
#

DISTNAME=	awesome-1.3
CATEGORIES=	x11
PKGREVISION=	1
MASTER_SITES=	http://awesome.naquadah.org/download/

MAINTAINER=	adam.hoka@gmail.com
HOMEPAGE=	http://awesome.naquadah.org/
COMMENT=	awesome is a tiling window manager

EGDIR=          ${PREFIX}/share/examples/awesome/

post-install:
	${INSTALL_DATA_DIR} ${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/awesomerc ${EGDIR}

install-user:
	${CP} ${EGDIR}awesomerc ${HOME}/.awesomerc

.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../wip/libconfig/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
