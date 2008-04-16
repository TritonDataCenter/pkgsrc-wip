# $NetBSD: options.mk,v 1.2 2006/05/23 15:09:52 tonio Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.erlang
PKG_SUPPORTED_OPTIONS=	java erlang-hipe

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mjava)
USE_JAVA=		yes
USE_JAVA2=		yes
.include "../../mk/java-vm.mk"
PLIST_SRC+=		PLIST.java
.else
CONFIGURE_ENV+=	JAVAC=none
.endif

.if !empty(PKG_OPTIONS:Merlang-hipe)
###
### XXX Need to check which platforms will enable this by default, if any.
###	Should it be an option?
###
PLIST_SUBST+=		SMP="@comment "
CONFIGURE_ARGS+=	--enable-hipe
.else
PLIST_SUBST+=		SMP=""
CONFIGURE_ARGS+=	--disable-hipe
.endif
