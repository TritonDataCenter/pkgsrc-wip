# $NetBSD$
#

DISTNAME=	libpixman-0.1.0
CATEGORIES=	wip
MASTER_SITES=	http://cairographics.org/snapshots/

MAINTAINER=	recht@NetBSD.org
HOMEPAGE=	http://cairographics.org/
COMMENT=	Pixel manipulation library

USE_BUILDLINK2=		yes
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
LIBTOOL_OVERRIDE=	${WRKSRC}/libtool
PKGCONFIG_OVERRIDE+=	${WRKSRC}/libpixman.pc.in
GNU_CONFIGURE=		yes

.include "../../mk/bsd.pkg.mk"
