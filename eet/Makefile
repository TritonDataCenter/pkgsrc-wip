# $NetBSD$
#

DISTNAME=	eet-0.9.10.037
CATEGORIES=	misc
MASTER_SITES=	http://enlightenment.freedesktop.org/files/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	grzela@seculture.com
HOMEPAGE=	http://enlightenment.org/
COMMENT=	Distribution Container Library and Tools

GNU_CONFIGURE=	YES
USE_LIBTOOL=    YES
DEPENDS+=	jpeg>=6b:../../graphics/jpeg
.include "../../graphics/jpeg/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
