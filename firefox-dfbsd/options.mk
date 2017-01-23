# $NetBSD: options.mk,v 1.33 2016/12/03 11:30:28 ryoon Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.firefox
PKG_SUPPORTED_OPTIONS=	official-mozilla-branding
PKG_SUPPORTED_OPTIONS+=	debug debug-info mozilla-jemalloc webrtc
PKG_SUPPORTED_OPTIONS+=	alsa oss pulseaudio dbus
PLIST_VARS+=		gnome jemalloc debug

.if ${OPSYS} == "Linux"
PKG_SUGGESTED_OPTIONS+=	alsa mozilla-jemalloc dbus
.elif ${OPSYS} == "NetBSD"
PKG_SUGGESTED_OPTIONS+=	alsa dbus
.elif ${OPSYS} == "FreeBSD"
PKG_SUGGESTED_OPTIONS+=	oss dbus
.elif ${OPSYS} == "DragonFly"
PKG_SUGGESTED_OPTIONS+=	oss dbus
.else
PKG_SUGGESTED_OPTIONS+= dbus pulseaudio
.endif

# On NetBSD/amd64 6.99.21 libxul.so is invalid when --enable-webrtc is set.
PKG_SUGGESTED_OPTIONS.Linux+=	webrtc

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Malsa)
CONFIGURE_ARGS+=	--enable-alsa
.include "../../audio/alsa-lib/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-alsa
.endif

.if !empty(PKG_OPTIONS:Moss)
CONFIGURE_ARGS+=	--with-oss
.include "../../mk/oss.buildlink3.mk"
.else
CONFIGURE_ARGS+=	--without-oss
.endif

.if !empty(PKG_OPTIONS:Mmozilla-jemalloc)
PLIST.jemalloc=		yes
CONFIGURE_ARGS+=	--enable-jemalloc
CONFIGURE_ARGS+=	--enable-replace-malloc
.else
CONFIGURE_ARGS+=	--disable-jemalloc
.endif

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mgcc)
.if ${CC_VERSION:S/gcc-//:S/.//g} >= 480
# Modern gcc does not run any "tracking" passes when compiling with -O0,
# which makes the generated debug info mostly useless. So explicitly
# request them.
O0TRACKING=-fvar-tracking-assignments -fvar-tracking
.endif
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug="-g -O0 ${O0TRACKING}"
CONFIGURE_ARGS+=	--enable-debug-symbols
CONFIGURE_ARGS+=	--disable-optimize
CONFIGURE_ARGS+=	--enable-debug-js-modules
CONFIGURE_ARGS+=	--disable-install-strip
PLIST.debug=		yes
.else
.if !empty(PKG_OPTIONS:Mdebug-info)
CONFIGURE_ARGS+=	--enable-debug-symbols
CONFIGURE_ARGS+=	--enable-optimize=-O0
.else
CONFIGURE_ARGS+=	--disable-debug-symbols
.endif
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-optimize=-O2
CONFIGURE_ARGS+=	--enable-install-strip
.endif

.if !empty(PKG_OPTIONS:Mpulseaudio)
.include "../../audio/pulseaudio/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-pulseaudio
.else
CONFIGURE_ARGS+=	--disable-pulseaudio
.endif

.if !empty(PKG_OPTIONS:Mdbus)
.include "../../sysutils/dbus-glib/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-dbus
.else
CONFIGURE_ARGS+=	--disable-dbus
.endif

PLIST_VARS+=		branding nobranding
.if !empty(PKG_OPTIONS:Mofficial-mozilla-branding)
CONFIGURE_ARGS+=	--enable-official-branding
LICENSE=		mozilla-trademark-license
RESTRICTED=		Trademark holder prohibits distribution of modified versions.
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}
PLIST.branding=		yes
.else
PLIST.nobranding=	yes
.endif

PLIST_VARS+=		webrtc
.if !empty(PKG_OPTIONS:Mwebrtc)
.include "../../graphics/libv4l/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-webrtc
.else
CONFIGURE_ARGS+=	--disable-webrtc
.endif
