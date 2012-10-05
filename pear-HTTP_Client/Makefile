# $NetBSD: Makefile,v 1.0 2006/12/06 01:15:50 othyro Exp $

DISTNAME=	HTTP_Client-1.2.1
CATEGORIES+=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Simple HTTP client class in PHP
LICENSE=	2-clause-bsd

DEPENDS+=	${PHP_PKG_PREFIX}-pear-Net_URL>=1.0.12:../../net/pear-Net_URL
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Net_Socket>=1.0.2:../../net/pear-Net_Socket
DEPENDS+=	${PHP_PKG_PREFIX}-pear-HTTP_Request>=1.2.3:../../www/pear-HTTP_Request

.include "../../lang/php/pear.mk"
.include "../../mk/bsd.pkg.mk"
