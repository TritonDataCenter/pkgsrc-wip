# $NetBSD$
#

DISTNAME=		libXext-6.4.2
CATEGORIES=		x11 devel
MASTER_SITES=		http://freedesktop.org/~xlibs/release/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		tech-pkg@NetBSD.org
HOMEPAGE=		http://xlibs.freedesktop.org/
COMMENT=		X Extension library

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_BUILDLINK3=		yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	xext.pc.in

.include "../../wip/libX11/buildlink3.mk"
.include "../../wip/xproto/buildlink3.mk"
.include "../../wip/xextensions/buildlink3.mk"
.include "../../devel/pkgconfig/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
