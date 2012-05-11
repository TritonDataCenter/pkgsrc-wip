# $NetBSD$
#

DISTNAME=	Horde_Translation-1.0.2
CATEGORIES=	devel
MASTER_SITES=	http://pear.horde.org/get/

MAINTAINER=	frederic@fauberteau.org
HOMEPAGE=	http://pear.horde.org/
COMMENT=	Translation wrappers
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=	${PHP_PKG_PREFIX}-pear-channel-horde-[0-9]*:../../wip/pear-channel-horde

.include "../../lang/php/pear.mk"
.include "../../mk/bsd.pkg.mk"
