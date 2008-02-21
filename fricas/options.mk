# $NetBSD: options.mk,v 1.1 2008/01/28 12:08:49 reinoud Exp $

PKG_OPTIONS_VAR=		PKG_OPTIONS.fricas
PKG_OPTIONS_REQUIRED_GROUPS=	lisp
PKG_OPTIONS_GROUP.lisp=		clisp sbcl

PKG_SUGGESTED_OPTIONS+=		clisp

.include "../../mk/bsd.options.mk"

# Select Lisp backend
.if !empty(PKG_OPTIONS:Mclisp)
BIN=			fas
BUILD_DEPENDS+=		clisp>=2.41:../../lang/clisp
CONFIGURE_ARGS+=	--with-lisp=clisp --with-x=no
.endif
.if !empty(PKG_OPTIONS:Msbcl)
BIN=			fasl
BUILD_DEPENDS+=		sbcl-[0-9]*:../../lang/sbcl
CONFIGURE_ARGS+=	--with-lisp=sbcl --with-x=no
.endif

# Modify PLIST
PLIST_SUBST+=	BIN=${BIN:Q}

.for opt in clisp sbcl
.if !empty(PKG_OPTIONS:M${opt})
PLIST_SUBST+=	${opt}=""
.else
PLIST_SUBST+=	${opt}="@comment "
.endif
.endfor
