# $NetBSD$

MODNAME=		recode
CATEGORIES+=		converters
PKGREVISION=		# empty
MAINTAINER=		evaldo@gardenali.biz
COMMENT=		PHP extension for recode support

CONFIGURE_ARGS+=	--with-${MODNAME}=shared,${BUILDLINK_PREFIX.recode}

.include "../../lang/php/ext.mk"
.include "../../converters/recode/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
