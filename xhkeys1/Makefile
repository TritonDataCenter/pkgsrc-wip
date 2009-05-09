# $NetBSD$
#

DISTNAME=	xhkeys-1.0.2
CATEGORIES=	x11
MASTER_SITES=	http://wmalms.tripod.com/

MAINTAINER=	jakllsch@kollasch.net
HOMEPAGE=	http://wmalms.tripod.com/
COMMENT=	Tool for special keyboards

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake
USE_LANGUAGES+=	c
GNU_CONFIGURE=	yes

INSTALLATION_DIRS+=	bin

INSTALL_MAKE_FLAGS=	BINDIR=${DESTDIR}${PREFIX}/bin

.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
