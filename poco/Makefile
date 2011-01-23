# $NetBSD$
#

PKGNAME=	poco-${POCO_VERSION}
CATEGORIES=	devel

COMMENT=	POCO C++ libraries

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../wip/poco/Makefile.common"

.include "../../devel/pcre/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
