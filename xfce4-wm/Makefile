# $NetBSD$

.include "../xfce4/Makefile.common"

PKGNAME=	xfce4-wm-${XFCE4_VERSION}
COMMENT=	XFce4 window manager

WRKSRC=		${WRKDIR}/xfce-devel/xfwm4

.include "../../devel/pkgconfig/buildlink2.mk"
.include "../../wip/xfce4-mcs-plugins/buildlink2.mk"
.include "../../x11/startup-notification/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
