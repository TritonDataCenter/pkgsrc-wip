# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.digikam
PKG_SUPPORTED_OPTIONS=	lensfun liblqr marble pim
PKG_SUGGESTED_OPTIONS=	lensfun liblqr marble pim

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mlensfun)
.include "../../graphics/lensfun/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mliblqr)
.include "../../graphics/liblqr/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mmarble)
.include "../../misc/kdeedu4/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mpim)
.include "../../misc/kdepimlibs4/buildlink3.mk"
.endif
