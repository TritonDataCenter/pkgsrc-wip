# $NetBSD$
#

DISTNAME=		glproto-1.4.6
CATEGORIES=		x11
MASTER_SITES=		http://xorg.freedesktop.org/releases/individual/proto/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		GL extension headers

PKGCONFIG_OVERRIDE+=	${WRKSRC}/glproto.pc.in
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes

.include "../../mk/bsd.pkg.mk"
