# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.fail2ban
PKG_SUPPORTED_OPTIONS=	gamin

.include "../../mk/bsd.options.mk"

###
### Use Gamin
###
.if !empty(PKG_OPTIONS:Mgamin)
DEPENDS+=	gamin>=0.0.21:../../sysutils/gamin
.endif
