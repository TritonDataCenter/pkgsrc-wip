# $NetBSD$

MODNAME=		exif
CATEGORIES+=		graphics
COMMENT=		PHP4 extension to extract information from EXIF headers

USE_BUILDLINK2=		YES

.include "../../www/php4/Makefile.module"

CONFIGURE_ARGS+=	--enable-${MODNAME}=shared

.include "../../mk/bsd.pkg.mk"
