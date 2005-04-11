# $NetBSD$
#

DISTNAME=		uade-1.00
CATEGORIES=		wip audio
MASTER_SITES=		http://uade.ton.tut.fi/uade/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://uade.ton.tut.fi/
COMMENT=		Unix Amiga Delitracker Emulator

USE_PKGLOCALEDIR=	yes
HAS_CONFIGURE=		yes

CONFIGURE_ARGS=--with-oss --without-xmms --without-bmp --prefix=${PREFIX}

.include "../../mk/bsd.pkg.mk"
