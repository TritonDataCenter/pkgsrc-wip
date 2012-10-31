# $NetBSD$

MODNAME=		tidy
CATEGORIES+=		www
COMMENT=		PHP extension for tidy functions

CONFLICTS=		php-tidy-[0-9]*

CONFIGURE_ARGS+=	--with-tidy=shared,${BUILDLINK_PREFIX.tidy}

USE_PHP_EXT_PATCHES=	yes

.include "../../lang/php/ext.mk"
.include "../../www/tidy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
