# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.filezilla
PKG_SUPPORTED_OPTIONS+=		dbus
PKG_SUGGESTED_OPTIONS+=		dbus

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		dbus

.if !empty(PKG_OPTIONS:Mdbus)
CONFIGURE_ARGS+=	--with-dbus
PLIST.dbus=		yes
.  include "../../sysutils/dbus/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-dbus
.endif
