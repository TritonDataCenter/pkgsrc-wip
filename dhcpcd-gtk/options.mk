# $NetBSD: $

PKG_OPTIONS_VAR=	PKG_OPTIONS.dhcpcd-gtk

PKG_SUPPORTED_OPTIONS=	gnome

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgnome)
.include "../../devel/libgnomeui/buildlink3.mk"
MAKE_ENV+=		DE=GNOME
.endif
