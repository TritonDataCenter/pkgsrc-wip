# $NetBSD$

.include "../xfce4/Makefile.common"

PKGNAME=	xfce4-panel-${XFCE4_VERSION}
COMMENT=	XFce4 panel

WRKSRC=		${WRKDIR}/xfce-devel/xfce4

.include "../../devel/pkgconfig/buildlink2.mk"
.include "../../textproc/libxml2/buildlink2.mk"
.include "../../wip/xfce4-mcs-plugins/buildlink2.mk"
.include "../../x11/startup-notification/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
