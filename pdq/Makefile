# $NetBSD$
#

COMMENT=		Flexible printing subsystem

CONFIGURE_ENV+=		GLIB_CONFIG=NO # make sure xpdq is not built

USE_PKGINSTALL=		yes
CONF_FILES=		${PREFIX}/share/pdq/printrc.example ${PKG_SYSCONFDIR}/printrc

.include "Makefile.common"
.include "../../mk/bsd.pkg.mk"
