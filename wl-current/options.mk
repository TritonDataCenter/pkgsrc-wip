# $NetBSD: options.mk,v 1.2 2008/04/12 22:43:04 jlam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.wl
PKG_SUPPORTED_OPTIONS=	emacs-w3m-current
# note: emacs-w3m is not supported by wip/emacs-current

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Memacs-w3m-current)
.include "../../wip/emacs-w3m-current/buildlink3.mk"
PLIST_VARS+=			emacs-w3m-current
PLIST.emacs-w3m-current=	yes
.endif
