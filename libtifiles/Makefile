# $NetBSD$
#

DISTNAME=		libtifiles
PKGNAME=		libtifiles-0.5.6
CATEGORIES=		db
MASTER_SITES=		http://www.ticalc.org/pub/unix/

MAINTAINER=		tech-pkg@NetBSD.org
HOMEPAGE=		http://tilp.info/
COMMENT=		Library for reading files from TI calculators

WRKSRC=			${WRKDIR}/${PKGNAME}

LDFLAGS+=		-lintl
USE_LIBTOOL=		YES
LIBTOOL_LA_FILES+=	lib/libtifiles.la
GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--disable-nls
USE_GNU_TOOLS+=		make

.include "../../mk/bsd.pkg.mk"
