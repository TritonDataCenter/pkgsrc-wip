# $NetBSD$
#

LIBGDA_PROVIDER=	xbase

.include "../../databases/libgda/Makefile.common"

CONFIGURE_ARGS+=	--with-xbase=${PREFIX}
CFLAGS+=		-Wno-deprecated
CFLAGS+=		-DXBASE_USED
USE_LANGUAGES+=		c c++

.include "../../wip/xbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
