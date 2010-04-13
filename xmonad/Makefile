# $NetBSD$
DISTNAME=	xmonad-${VERSION}
PKGNAME=	xmonad-${VERSION}
VERSION=	0.9.1
CATEGORIES=	wm

MAINTAINER=	esg@sdf.org
HOMEPAGE=	http://xmonad.org/
COMMENT=	Tiling window manager

LICENSE=	modified-bsd

BUILDLINK_API_DEPENDS.hs-x11+=	hs-x11>=1.5.0.0
BUILDLINK_API_DEPENDS.hs-x11+=	hs-x11<1.6

.include "../../x11/libX11/buildlink3.mk"
.include "../../wip/hs-x11/buildlink3.mk"
.include "../../wip/mk/haskell.mk"
.include "../../mk/bsd.pkg.mk"
