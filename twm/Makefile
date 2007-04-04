# $NetBSD$
#

DISTNAME=	twm-1.0.3
CATEGORIES=	wm
MASTER_SITES=	http://xorg.freedesktop.org/releases/individual/app/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	blair.sadewitz@gmail.com
HOMEPAGE=	http://xorg.freedesktop.org/releases/individual/app/
COMMENT=	TWM window manager from modular X.org

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config yacc

CFLAGS+=	-fno-strict-aliasing

.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
