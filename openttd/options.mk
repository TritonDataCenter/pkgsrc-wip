# $NetBSD$
.include "../../mk/bsd.prefs.mk"

PKG_OPTIONS_VAR=	PKG_OPTIONS.openttd
PKG_SUPPORTED_OPTIONS=	openttd-data
PKG_SUGGESTED_OPTIONS=	openttd-data

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mopenttd-data)
DEPENDS+=	openttd-opengfx:../../wip/openttd-opengfx
DEPENDS+=	openttd-opensfx:../../wip/openttd-opensfx
DEPENDS+=	openttd-openmsx:../../wip/openttd-openmsx
.endif
