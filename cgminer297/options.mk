# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.cgminer
PKG_SUPPORTED_OPTIONS+=	bitforce icarus modminer ztex
PKG_SUGGESTED_OPTIONS+=	bitforce icarus modminer

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		modminer

.if !empty(PKG_OPTIONS:Mbitforce)
CONFIGURE_ARGS+=	--enable-bitforce
.endif

.if !empty(PKG_OPTIONS:Micarus)
CONFIGURE_ARGS+=	--enable-icarus
.endif

.if !empty(PKG_OPTIONS:Mmodminer)
PLIST.modminer=	yes
CONFIGURE_ARGS+=	--enable-modminer
.endif

.if !empty(PKG_OPTIONS:Mztex)	# XXX
CONFIGURE_ARGS+=	--enable-ztex
DEPENDS+=		libusb>=:../../devel/libusb1
.endif

