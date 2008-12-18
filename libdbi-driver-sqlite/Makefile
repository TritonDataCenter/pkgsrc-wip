# $NetBSD$
#

.include "../../wip/libdbi/Makefile_drivers"

PKGNAME=	${DISTNAME:S/libdbi-drivers/libdbi-driver-sqlite/:S/-1/.1/:S/-2/.2/}

COMMENT=	SQLite driver for libdbi, a database abstraction

CONFLICTS=		libdbi-sqlite-[0-9]*

CONFIGURE_ARGS+=	--with-sqlite
CONFIGURE_ARGS+=	--with-sqlite-incdir=${BUILDLINK_PREFIX.sqlite}/include
CONFIGURE_ARGS+=	--with-sqlite-libdir=${BUILDLINK_PREFIX.sqlite}/lib

.include "../../wip/libdbi/buildlink3.mk"
.include "../../databases/sqlite/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
