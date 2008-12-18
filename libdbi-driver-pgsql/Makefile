# $NetBSD$
#

.include "../../wip/libdbi/Makefile_drivers"

PKGNAME=	${DISTNAME:S/libdbi-drivers/libdbi-driver-pgsql/:S/-1/.1/:S/-2/.2/}

COMMENT=	PostgreSQL driver for libdbi, a database abstraction

CONFLICTS=		libdbi-pgsql-[0-9]*

CONFIGURE_ARGS+=	--with-pgsql
CONFIGURE_ARGS+=	--with-pgsql-incdir=${BUILDLINK_PREFIX.postgresql82-client}/include
CONFIGURE_ARGS+=	--with-pgsql-libdir=${BUILDLINK_PREFIX.postgresql82-client}/lib

.include "../../wip/libdbi/buildlink3.mk"
.include "../../databases/postgresql82-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
