# $NetBSD: options.mk,v 1.5 2005/10/07 10:28:06 rillig Exp $

PKG_OPTIONS_VAR=		PKG_OPTIONS.finch
PKG_SUPPORTED_OPTIONS+=		gstreamer debug
PKG_SUGGESTED_OPTIONS+=

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgstreamer)
.  include "../../multimedia/gstreamer0.10/buildlink3.mk"
.else
CONFIGURE_ARGS+=        --disable-gstreamer
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+= --enable-debug
.else
CONFIGURE_ARGS+= --disable-debug
.endif
