# $NetBSD$

DISTNAME=	jansson-2.4
CATEGORIES=	textproc
MASTER_SITES=	http://www.digip.org/jansson/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.digip.org/jansson/
COMMENT=	C library for encoding, decoding and manipulating JSON data
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE+=	jansson.pc.in
TEST_TARGET=	check

.include "../../mk/bsd.pkg.mk"
