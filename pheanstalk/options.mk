# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.pheanstalk
PKG_SUPPORTED_OPTIONS=	tests
PKG_SUGGESTED_OPTIONS+=	# blank

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mtests)
DEPENDS+=		beanstalkd>=1.3:../../wip/beanstalkd
DEPENDS+=		${PHP_PKG_PREFIX}-pear-PHPUnit>=3.7.10:../../wip/PHPUnit
.endif
