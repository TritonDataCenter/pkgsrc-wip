# $NetBSD$
#

DISTNAME=	ibus-table-wubi-1.2.0.20091227
CATEGORIES=	inputmethod
MASTER_SITES=	http://ibus.googlecode.com/files/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://code.google.com/p/ibus/
COMMENT=	Wubi86 and Wubi98 input method on IBus Table
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pkg-config

CONFIGURE_ARGS+=	--enable-wubi86
CONFIGURE_ARGS+=	--enable-wubi98
CONFIGURE_ARGS+=	--enable-extra-phrases

.include "../../wip/ibus-table-extraphrase/buildlink3.mk"
.include "../../wip/ibus-table/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
