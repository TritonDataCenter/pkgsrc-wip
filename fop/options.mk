# $NetBSD: options.mk,v 1.5 2007/02/22 19:27:13 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.fop
PKG_SUPPORTED_OPTIONS=	doc

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdoc)
PLIST_SRC+=	${PKGDIR}/PLIST.docs
.endif

post-extract:
.if empty(PKG_OPTIONS:Mdoc)
.for subdir in docs javadocs
	cd ${WRKSRC} && ${RM} -rf ${subdir}
.endfor
.endif
