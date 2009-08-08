# $NetBSD$
#

DISTNAME=	CRF++-0.53
PKGNAME=	${DISTNAME:tl:S/+/p/g}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=crfpp/}

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://crfpp.sourceforge.net/
COMMENT=	Yet Another CRF toolkit

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
