# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.kdemultimedia
PKG_SUPPORTED_OPTIONS=	pulseaudio
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mpulseaudio)
.include "../../audio/pulseaudio/buildlink3.mk"
.else
CMAKE_ARGS+=	-DWITH_PulseAudio:BOOL=OFF
.endif
