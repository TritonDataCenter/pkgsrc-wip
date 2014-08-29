# $NetBSD$

.if defined(PKGNAME) && empty(PKGNAME:Mmplayer-share*)

# Note: This expression is the same as ${PKGBASE}, but the latter is
# not defined yet, so we cannot use it here.
PKG_OPTIONS_VAR=	PKG_OPTIONS.${PKGNAME:C/-[0-9].*//}

.include "../../mk/bsd.prefs.mk"

# -------------------------------------------------------------------------
# Define PKG_SUPPORTED_OPTIONS based on the current package and system.
# -------------------------------------------------------------------------

# Options supported by both mplayer* or mencoder*.
PKG_SUPPORTED_OPTIONS=	gif jpeg mad dts dv dvdread oss png theora vorbis

# Set options based on the specific package being built.
.if !empty(PKGNAME:M*mplayer*)
PKG_OPTIONS_OPTIONAL_GROUPS=	faadgroup
PKG_OPTIONS_GROUP.faadgroup=	faad mplayer-internal-faad
PKG_SUGGESTED_OPTIONS+=		faad

PKG_SUPPORTED_OPTIONS+=	aalib esound ggi mplayer-menu nas sdl

.  if ${OPSYS} != "SunOS"
PKG_SUPPORTED_OPTIONS+=	arts
.  endif
.elif !empty(PKGNAME:M*mencoder*)
PKG_SUPPORTED_OPTIONS+=	lame
.endif

# OS-specific options.
.if ${OPSYS} == "FreeBSD" || ${OPSYS} == "Linux" || ${OPSYS} == "NetBSD"
PKG_SUPPORTED_OPTIONS+=	cdparanoia
.elif ${OPSYS} == "SunOS"
PKG_SUPPORTED_OPTIONS+=	mlib
.endif

# Platform-specific options.
.if ${MACHINE_ARCH} == "i386"
PKG_SUPPORTED_OPTIONS+= mplayer-runtime-cpudetection mplayer-win32 \
			xvid
.endif
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc" || \
    ${MACHINE_ARCH} == "alpha"
PKG_SUPPORTED_OPTIONS+=	mplayer-real
.endif

# -------------------------------------------------------------------------
# Define PKG_SUGGESTED_OPTIONS.
# -------------------------------------------------------------------------

.for _o_ in cdparanoia dv dvdread esound gif jpeg \
	    lame mad mplayer-menu mplayer-real \
	    mplayer-runtime-cpudetection mplayer-win32 \
	    nas oss png sdl theora vorbis xvid
.  if !empty(PKG_SUPPORTED_OPTIONS:M${_o_})
PKG_SUGGESTED_OPTIONS+=	${_o_}
.  endif
.endfor

# -------------------------------------------------------------------------
# Handle chosen options.
# -------------------------------------------------------------------------

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Maalib)
.  include "../../graphics/aalib/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Marts)
CONFIGURE_ARGS+=	--enable-arts
.  include "../../audio/arts/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-arts
.endif

.if !empty(PKG_OPTIONS:Mcdparanoia)
CONFIGURE_ARGS+=	--enable-cdparanoia
CONFIGURE_ARGS+=	--with-cdparanoiaincdir="${BUILDLINK_PREFIX.cdparanoia}/include/cdparanoia"
.  include "../../audio/cdparanoia/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-cdparanoia
.endif

.if !empty(PKG_OPTIONS:Mdts)
CONFIGURE_ARGS+=	--enable-libdts
.  include "../../audio/libdca/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-libdts
.endif

.if !empty(PKG_OPTIONS:Mdv)
CONFIGURE_ARGS+=	--enable-libdv
.  include "../../multimedia/libdv/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-libdv
.endif

.if !empty(PKG_OPTIONS:Mdvdread)
CONFIGURE_ARGS+=	--enable-dvdread
.  include "../../multimedia/libdvdread/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-dvdread
.endif

.if !empty(PKG_OPTIONS:Mesound)
CONFIGURE_ARGS+=	--enable-esd
.  include "../../audio/esound/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-esd
.endif


.if empty(PKG_OPTIONS:Mfaad) && empty(PKG_OPTIONS:Mmplayer-internal-faad)
CONFIGURE_ARGS+=	--disable-external-faad
CONFIGURE_ARGS+=	--disable-internal-faad
.elif !empty(PKG_OPTIONS:Mfaad)
CONFIGURE_ARGS+=	--enable-external-faad
.  include "../../audio/faad2/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--enable-internal-faad
.endif

.if !empty(PKG_OPTIONS:Mggi)
CONFIGURE_ARGS+=	--enable-ggi
.  include "../../graphics/libggi/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-ggi
.endif

.if !empty(PKG_OPTIONS:Mgif)
CONFIGURE_ARGS+=	--enable-gif
.  include "../../graphics/giflib/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-gif
.endif

.if !empty(PKG_OPTIONS:Mjpeg)
CONFIGURE_ARGS+=	--enable-jpeg
.  include "../../mk/jpeg.buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-jpeg
.endif

.if !empty(PKG_OPTIONS:Mlame)
#CONFIGURE_ARGS+=	--enable-toolame
.  include "../../audio/lame/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-toolame
.endif

.if !empty(PKG_OPTIONS:Mmad)
CONFIGURE_ARGS+=	--enable-mad
.  include "../../audio/libmad/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-mad
.endif

.if !empty(PKG_OPTIONS:Mmlib)
CONFIGURE_ARGS+=	--enable-mlib
.else
CONFIGURE_ARGS+=	--disable-mlib
.endif

.if !empty(PKG_OPTIONS:Mmplayer-menu)
CONFIGURE_ARGS+=	--enable-menu
.else
CONFIGURE_ARGS+=	--disable-menu
.endif

.if !empty(PKG_OPTIONS:Mmplayer-real)
EVAL_PREFIX+=		PREFIX.realplayer-codecs=realplayer-codecs
PREFIX.realplayer-codecs_DEFAULT=	${LOCALBASE}
CONFIGURE_ARGS+=	--enable-real
CONFIGURE_ARGS+=	--with-reallibdir="${PREFIX.realplayer-codecs}/lib/RealPlayer8-Codecs"
DEPENDS+=		realplayer-codecs>=8nb2:../../multimedia/realplayer-codecs
.else
CONFIGURE_ARGS+=	--disable-real
.endif

.if !empty(PKG_OPTIONS:Mmplayer-runtime-cpudetection)
CONFIGURE_ARGS+=	--enable-runtime-cpudetection
.else
CONFIGURE_ARGS+=	--disable-runtime-cpudetection
.endif

.if !empty(PKG_OPTIONS:Mmplayer-win32)
EVAL_PREFIX+=		PREFIX.win32-codecs=win32-codecs
PREFIX.win32-codecs_DEFAULT=	${LOCALBASE}
CONFIGURE_ARGS+=	--enable-win32
CONFIGURE_ARGS+=	--with-win32libdir="${PREFIX.win32-codecs}/lib/win32"
DEPENDS+=		win32-codecs>=011227:../../multimedia/win32-codecs
.else
CONFIGURE_ARGS+=	--disable-win32
.endif

.if !empty(PKG_OPTIONS:Mnas)
CONFIGURE_ARGS+=	--enable-nas
.  include "../../audio/nas/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-nas
.endif

.if !empty(PKG_OPTIONS:Moss)
CONFIGURE_ARGS+=	--enable-ossaudio
.  include "../../mk/oss.buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-ossaudio
.endif

.if !empty(PKG_OPTIONS:Mpng)
CONFIGURE_ARGS+=	--enable-png
.  include "../../graphics/png/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-png
.endif

.if !empty(PKG_OPTIONS:Msdl)
CONFIGURE_ARGS+=	--enable-sdl
.  include "../../devel/SDL/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-sdl
.endif

.if !empty(PKG_OPTIONS:Mtheora)
CONFIGURE_ARGS+=	--enable-theora
.  include "../../multimedia/libtheora/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-theora
.endif

.if !empty(PKG_OPTIONS:Mvorbis)
CONFIGURE_ARGS+=	--enable-vorbis
.  include "../../audio/libvorbis/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-vorbis
.endif

.if !empty(PKG_OPTIONS:Mxvid)
CONFIGURE_ARGS+=	--enable-xvid
.  include "../../multimedia/xvidcore/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-xvid
.endif

.endif # defined(PKGNAME) && empty(PKGNAME:Mmplayer-share*)
