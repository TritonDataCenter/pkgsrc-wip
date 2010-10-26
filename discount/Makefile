# $NetBSD$
#

DISTNAME=	discount-2.0.1
CATEGORIES=	textproc
MASTER_SITES=	http://www.pell.portland.or.us/~orc/Code/discount/

MAINTAINER=	zecrazytux@zecrazytux.net
HOMEPAGE=	http://www.pell.portland.or.us/~orc/Code/discount/
COMMENT=	Markdown C implementation
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

HAS_CONFIGURE=		YES
CONFIGURE_SCRIPT=	./configure.sh
CONFIGURE_ARGS=		--prefix=${DESTDIR}${PREFIX} \
			--execdir=${DESTDIR}${PREFIX}/bin \
			--libdir=${DESTDIR}${PREFIX}/lib \
			--mandir=${DESTDIR}${PREFIX}${PKGMANDIR} \
			--enable-all-features

.include "../../mk/bsd.pkg.mk"
