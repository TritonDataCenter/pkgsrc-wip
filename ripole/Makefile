# $NetBSD: Makefile,v 1.79 2005/04/11 21:47:20 tv Exp $
#

DISTNAME=		ripole-0.1.4
PKGREVISION=		# empty
CATEGORIES=		archivers
MASTER_SITES=		http://www.pldaniels.com/ripole/

MAINTAINER=		charlie@rubberduck.com
HOMEPAGE=		http://www.pldaniels.com/ripole/
COMMENT=		Program/library designed to extract attachments from OLE2 files

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LIBTOOL=		yes
BUILD_TARGET=		default

INSTALLATION_DIRS=	bin

do-configure: # empty

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PKGBASE} ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.prefs.mk"
.include "../../mk/bsd.pkg.mk"
