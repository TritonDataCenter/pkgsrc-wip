# $NetBSD$
#

DISTNAME=		NuppelVideo-0.52a
CATEGORIES=		graphics audio
MASTER_SITES=		${MASTER_SITE_FREEBSD_LOCAL:=arved/} \
			http://frost.htu.tuwien.ac.at/~roman/nuppelvideo/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://web.archive.org/web/20050305195413/http://frost.htu.tuwien.ac.at/~roman/nuppelvideo/
COMMENT=		Fast and simple RTjpeg-based video capture program

PKG_DESTDIR_SUPPORT=	none

CFLAGS+=		${CPPFLAGS}
DEFS+=			${CPPFLAGS}

.include "../../mk/x11.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
