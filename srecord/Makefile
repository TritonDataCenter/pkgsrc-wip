# $NetBSD$
#

DISTNAME=	srecord-1.50
CATEGORIES=	devel
MASTER_SITES=	http://srecord.sourceforge.net/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://srecord.sourceforge.net/
COMMENT=	Manipulate EPROM load files

PKG_DESTDIR_SUPPORT=	user-destdir

LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
