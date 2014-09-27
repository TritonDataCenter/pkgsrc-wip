# $NetBSD: Makefile,v 1.40 2014/05/09 07:37:08 wiz Exp $

PKGNAME=	gnuradio-qtgui-${VERSION}
COMMENT=	Qt GUI module of GNU Radio

.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

CONF_FILES+=	${EGDIR}/gr-qtgui.conf	${PKG_SYSCONFDIR}/gr-qtgui.conf

CMAKE_ARGS+=	-DENABLE_DEFAULT=OFF
CMAKE_ARGS+=	-DENABLE_GR_QTGUI=ON

.include	"../../x11/qt4-libs/buildlink3.mk"
.include	"../../x11/qwt-qt4/buildlink3.mk"
.include	"../../x11/py-qt4/buildlink3.mk"

.include	"../../mk/bsd.pkg.mk"
