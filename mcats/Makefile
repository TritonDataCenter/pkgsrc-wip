# $NetBSD$
#

DISTNAME=	mcats-0.1.0
CATEGORIES=	converters
MASTER_SITES=	http://mcats.net/files/

MAINTAINER=	pehr@mcats.net
HOMEPAGE=	http://mcats.net/
COMMENT=	Catalog converter

GNU_CONFIGURE=		YES
USE_GNU_TOOLS+=		make
USE_LIBTOOL=		YES
LIBTOOL_LA_FILES+=	lib/mcats/libcdinput.la
LIBTOOL_LA_FILES+=	lib/mcats/libstdout.la
LIBTOOL_LA_FILES+=	lib/mcats/libwii.la

.include "../../mk/bsd.pkg.mk"
