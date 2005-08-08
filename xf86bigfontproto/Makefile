# $NetBSD$
#

DISTNAME=		xf86bigfontproto-1.1
CATEGORIES=		x11
MASTER_SITES=		http://xorg.freedesktop.org/X11R7.0-RC0/proto/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		lars.nordlund@hem.utfors.se
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		TBD

CONFLICTS+=		xorg-libs-[0-9]*

GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE+=	${WRKSRC}/xf86bigfontproto.pc.in
USE_LANGUAGES=		# empty

.include "../../mk/bsd.pkg.mk"
