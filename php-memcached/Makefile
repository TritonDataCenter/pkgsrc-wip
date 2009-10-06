# $NetBSD: Makefile,v 1.5 2008/01/18 05:14:37 tnn Exp $
#

MODNAME=		memcached
PKGREVISION=		1
PECL_VERSION=		1.0.0
CATEGORIES+=		devel
COMMENT=		PHP extension for memcached

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=		yes

CONFIGURE_ARGS+=	--enable-${MODNAME}
CONFIGURE_ARGS+=	--with-${PKGMODNAME}=shared,${BUILDLINK_DIR}
CONFIGURE_ARGS+=	--with-libmemcached_dir=${BUILDLINK_PREFIX.libmemcached}

.include "../../lang/php/ext.mk"
.include "../../wip/libmemcached/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
