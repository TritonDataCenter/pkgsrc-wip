# $NetBSD$

.include "Makefile.common"
COMMENT=        Yet Another Multipurpose CHunk Annotator

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=		pkg-config
USE_LANGUAGES=	c c++

#TEST_TARGET=	check

PKGCONFIG_OVERRIDE+=	marisa.pc.in

.include "../../mk/bsd.pkg.mk"
