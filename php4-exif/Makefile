# $NetBSD$

MODNAME=		exif
CATEGORIES+=		graphics
COMMENT=		PHP4 extension to manipulate EXIF files

USE_BUILDLINK2=		YES

.include "../../www/php4/Makefile.module"

CONFIGURE_ARGS+=	--enable-exif=shared,${BUILDLINK_PREFIX.exif}

.include "../../graphics/libexif/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
