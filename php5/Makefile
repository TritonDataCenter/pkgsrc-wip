# $NetBSD$
#

PKGNAME=	php-${PHP5_VERSION}
CATEGORIES+=	lang

MAINTAINER=	pancake@phreaker.net
HOMEPAGE=	http://www.php.net/
COMMENT=	PHP Hypertext Preprocessor version 5

USE_BUILDLINK3=	YES
USE_PKGINSTALL=	YES
GNU_CONFIGURE=	YES
USE_GNU_TOOLS+=	make

CONF_FILES=	${PREFIX}/etc/php.ini

BUILD_DEFS=	USE_INET6 PHP5_WITHOUT_NETWORK

post-install:
	${INSTALL_DATA} ${WRKSRC}/php.ini-recommended \
		${PREFIX}/etc/php.ini

.include "Makefile.common"
