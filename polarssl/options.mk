# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.polarssl
PKG_SUPPORTED_OPTIONS=		polarssl-examples
PKG_SUGGESTED_OPTIONS=		# empty

.include "../../mk/bsd.options.mk"

# Build and install only the shared and dynamic libs and include files,
# not the (mostly demonstrational) programs

.if !empty(PKG_OPTIONS:Mpolarssl-examples)
PLIST_SRC=	${PKGDIR}/PLIST ${PKGDIR}/PLIST.bin
.else
MAKE_ENV+=	ONLY_LIB=yes
INSTALL_ENV+=	ONLY_LIB=yes
.endif
