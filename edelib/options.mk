# $NetBSD$

.if !empty(PKG_OPTIONS:Mlargefile)
CONFIGURE_ARGS+=	--enable-largefile
.else
CONFIGURE_ARGS+=	--disable-largefile
.endif

.if !empty(PKG_OPTIONS:Mnls)
CONFIGURE_ARGS+=	--enable-nls
.else
CONFIGURE_ARGS+=	--disable-nls
.endif

.if !empty(PKG_OPTIONS:Mshared)
PLIST.shlibs=yes
CONFIGURE_ARGS+=	--enable-shared
.else
PLIST.statlibs=yes
CONFIGURE_ARGS+=	--disable-shared
.endif
