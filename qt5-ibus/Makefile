# $NetBSD$

PKGNAME=	qt5-ibus-${QTVERSION}
COMMENT=	Qt5 IBus input context plugin

BUILD_DIRS=	qtbase/src/plugins/platforminputcontexts/ibus

INSTALL_ENV+=	INSTALL_ROOT=${DESTDIR}

.include "../../x11/qt5-qtbase/Makefile.common"

.include "../../inputmethod/ibus/buildlink3.mk"
.include "../../x11/qt5-dbus/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
