# $NetBSD$
#

DISTNAME=		uebimiau-2.7.2
CATEGORIES=		wip
MASTER_SITES=		http://www.contenidosonline.com.ar/pkgsrc/

MAINTAINER=		rpereyra@users.sourceforge.net
HOMEPAGE=		http://www.uebimiau.org/
COMMENT=		Web based email client

DEPENDS+=      		ap{,2}-php>=4.3.0:../../www/ap-php

WRKSRC=			${WRKDIR}/uebimiau-2.7.2
NO_BUILD=		yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/httpd/htdocs/uebimiau
	${CP} -R ${WRKSRC}/* ${PREFIX}/share/httpd/htdocs/uebimiau

.include "../../mk/bsd.pkg.mk"
