# $NetBSD$
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.msgpack
PKG_SUPPORTED_OPTIONS=	tests

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mtests)
BUILDLINK_DEPMETHOD.googletest+=	build
.include "../../devel/googletest/buildlink3.mk"
TEST_TARGET=	check
.endif
