# $NetBSD$
#

DISTNAME=	ibus-table-others-1.2.0.20100512
CATEGORIES=	inputmethod
MASTER_SITES=	http://ibus.googlecode.com/files/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://code.google.com/p/ibus/
COMMENT=	All non-Chinese tables for IBus-Table
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LANGUAGES=	# none
USE_TOOLS+=	pkg-config

.include "../../wip/ibus-table/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
