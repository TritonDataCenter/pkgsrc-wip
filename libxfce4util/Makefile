# $NetBSD$

.include "../../wip/xfce4/Makefile.common"

DISTNAME=	libxfce4util-${XFCE4_VERSION}
CATEGORIES=	x11
COMMENT=	Xfce basic library

CONFIGURE_ARGS+=	--with-html-dir=${PREFIX:Q}/share/doc/html

PKGCONFIG_OVERRIDE=	libxfce4util/libxfce4util-1.0.pc.in

.include "../../mk/bsd.pkg.mk"
