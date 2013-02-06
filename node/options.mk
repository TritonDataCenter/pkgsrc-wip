# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.node
PKG_SUPPORTED_OPTIONS=	openssl dtrace
PKG_SUGGESTED_OPTIONS=

.if ${OPSYS} == "SunOS" && exists(/usr/sbin/dtrace)
PKG_SUGGESTED_OPTIONS+=	dtrace
.endif

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdtrace)
CONFIGURE_ARGS+=	--with-dtrace
.else
CONFIGURE_ARGS+=	--without-dtrace
.endif

.if !empty(PKG_OPTIONS:Mopenssl)
# As node already includes openssl, should we use the included one (static) or
# security/openssl one as a dynamic lib
BUILDLINK_API_DEPENDS.openssl+= openssl>=0.9.8
CONFIGURE_ARGS+=  --shared-openssl
CONFIGURE_ARGS+=  --shared-openssl-includes=${BUILDLINK_PREFIX.openssl:Q}/include
CONFIGURE_ARGS+=  --shared-openssl-libpath=${BUILDLINK_PREFIX.openssl:Q}/lib
. include "../../security/openssl/buildlink3.mk"
.endif

.if empty(PKG_OPTIONS:Msnapshot)
CONFIGURE_ARGS+=	--without-snapshot
.endif
