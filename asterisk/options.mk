# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.asterisk
PKG_SUPPORTED_OPTIONS=	zaptel
.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mzaptel)
# zaptel only supported under NetBSD at the moment
.  include "../../wip/zaptel-netbsd/buildlink3.mk"
MAKE_FLAGS+=	ASTERISK_USE_ZAPTEL=1
PLIST_SUBST+=		ZAPTEL=
.else
PLIST_SUBST+=		ZAPTEL="@comment "
.endif
