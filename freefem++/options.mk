# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.freefem++
PKG_SUPPORTED_OPTIONS=	amd umfpack
#PKG_SUGGESTED_OPTIONS=	pulseaudio

.include "../../mk/bsd.options.mk"

#.if !empty(PKG_OPTIONS:Mpulseaudio)
#.include "../../audio/pulseaudio/buildlink3.mk"
#.else
#CMAKE_ARGS+=	-DNO_PULSE_SIMPLE:BOOL=TRUE
#.endif

.if !empty(PKG_OPTIONS:Mpulseaudio)
.include "../../audio/pulseaudio/buildlink3.mk"
.else
CMAKE_ARGS+=	-DNO_PULSE_SIMPLE:BOOL=TRUE
.endif

.if !empty(PKG_OPTIONS:Mpulseaudio)
.include "../../audio/pulseaudio/buildlink3.mk"
.else
CMAKE_ARGS+=	-DNO_PULSE_SIMPLE:BOOL=TRUE
.endif
