# $NetBSD$

MODNAME=		sockets
CATEGORIES+=		net
PKGREVISION=		# empty
COMMENT=		PHP5 extension for sockets support

USE_BUILDLINK3=		YES

.include "../../wip/php5/Makefile.module"

CONFIGURE_ARGS+=	--enable-${MODNAME}=shared,${BUILDLINK_DIR}

.include "../../mk/bsd.pkg.mk"
