# $NetBSD$
#

DISTNAME=		fixesproto-3.0.1
CATEGORIES=		x11
MASTER_SITES=		http://xorg.freedesktop.org/releases/X11R7.0-RC1/proto/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		reed@reedmedia.net
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		Fixes extension headers from X.org

CONFLICTS+=		fixesext-[0-9]*
#CONFLICTS+=		xorg-libs-[0-9]* # not in same PREFIX

GNU_CONFIGURE=		yes
PKGCONFIG_OVERRIDE+=	${WRKSRC}/fixesproto.pc.in
USE_LANGUAGES=		# empty

.include "../../wip/xextproto/buildlink3.mk"
.include "../../wip/xproto/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
