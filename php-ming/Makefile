# $NetBSD$

MODNAME=		ming
CATEGORIES+=		graphics

MAINTAINER=		obata@lins.jp
COMMENT=		PHP extension for Ming library

CONFIGURE_ARGS+=	--with-${MODNAME}=${BUILDLINK_PREFIX.ming}

.include "../../wip/ming/buildlink3.mk"
.include "../../lang/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
