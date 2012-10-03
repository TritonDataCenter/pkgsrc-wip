# $NetBSD$
#

LICENSE=		gnu-gpl-v2 AND gnu-lgpl-v2

LIBGDA_PROVIDER=	odbc

.include "../../databases/libgda/Makefile.common"

CONFIGURE_ARGS+=	--with-odbc=${PREFIX}

.include "options.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
