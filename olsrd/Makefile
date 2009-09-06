# $NetBSD$
#

DISTNAME=	olsrd-0.5.6-r5
PKGNAME=	olsrd-0.5.6r5
CATEGORIES=	net
MASTER_SITES=	http://www.olsr.org/releases/0.5/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	http://www.olsr.org/
COMMENT=	Ad-hoc wireless mesh routing daemon

LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir
USE_TOOLS+=	bison
USE_TOOLS+=	gmake

MAKE_FLAGS+=ETCDIR=$(DESTDIR)$(PREFIX)/etc
MAKE_FLAGS+=EXTRA_CPPFLAGS=-DETCDIR=\\\"$(PREFIX)/etc\\\"

.include "../../mk/bsd.pkg.mk"
