# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.pear-PHPUnit_MockObject
PKG_SUPPORTED_OPTIONS=	soap
PKG_SUGGESTED_OPTIONS=	soap

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Msoap)
DEPENDS+=		${PHP_PKG_PREFIX}-soap-[0-9]*:../../net/php-soap
.endif
