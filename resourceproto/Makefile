# $NetBSD$
#

DISTNAME=		resourceproto-1.0.1
CATEGORIES=		x11
MASTER_SITES=		http://xorg.freedesktop.org/releases/X11R7.0-RC1/proto/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		reed@reedmedia.net
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		Resource extension headers from X.org

CONFLICTS+=		resourceext-[0-9]*

GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE+=	${WRKSRC}/resourceproto.pc.in
USE_LANGUAGES=		# empty

.include "../../mk/bsd.pkg.mk"
