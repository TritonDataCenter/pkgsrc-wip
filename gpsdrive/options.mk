# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.gpsdrive
PKG_SUPPORTED_OPTIONS=	garmin

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgarmin)
CONFIGURE_ARGS+=	--enable-garmin
CONFLICTS+=		gpsd-[0-9]*
PLIST_SUBST+=		GARMIN=""
.else
CONFIGURE_ARGS+=	--disable-garmin
DEPENDS+=		gpsd>=1.07:../../geography/gpsd
PLIST_SUBST+=		GARMIN="@comment "
.endif
