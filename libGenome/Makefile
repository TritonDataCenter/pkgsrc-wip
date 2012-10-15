# $NetBSD$
#

DISTNAME=		libGenome-0.5.2
CATEGORIES=		biology
MASTER_SITES=		http://pages.cs.wisc.edu/~darling/libgenome/releases/

MAINTAINER=		dprice@cs.nmsu.edu
HOMEPAGE=		http://pages.cs.wisc.edu/~darling/libgenome/
COMMENT=		A development library for bioinformatic software

PKG_DESTDIR_SUPPORT=	none

WRKSRC=			${WRKDIR}/libgenome-0.5.2
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
LIBTOOL_OVERRIDE=	${WRKSRC}/libtool
GNU_CONFIGURE=		yes

.include "../../mk/bsd.pkg.mk"
