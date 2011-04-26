# $NetBSD$

# pike-* packages are not ready yet
PKGNAME=	pike-core-${PIKE_VERSION}
CATEGORIES=	lang
COMMENT=	Dynamic programming language with a syntax similar to C++

MODULE_NAMES=	_ADT _Charset _math Parser spider sprintf \
		files system Gmp Nettle Regexp

.for m in ${MODULE_NAMES}
MODULE_DIRS+=		modules/${m:Q}
.endfor

.include "../../wip/pike-core/Makefile.common"

.include "../../devel/gmp/buildlink3.mk"
.include "../../security/nettle/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
