# $NetBSD$
#

DISTNAME=	flvmeta-1.0.11
CATEGORIES=	multimedia
MASTER_SITES=	http://flvmeta.googlecode.com/files/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://code.google.com/p/flvmeta/
COMMENT=	Metadata injector for FLV video files
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes

INSTALLATION_DIRS+=	share/doc/flvmeta

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/flvmeta

.include "../../mk/bsd.pkg.mk"
