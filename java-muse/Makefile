# $NetBSD$
#

DISTNAME=		muse-0.8a5
PKGNAME=		java-muse-0.8a5
CATEGORIES=		textproc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=muse/}

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://muse.sourceforge.net/
COMMENT=		Java-XML API for networking with modules like Jabber

WRKSRC=		${WRKDIR}/

do-build:

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/classpath/muse/
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar \
		${DESTDIR}${PREFIX}/share/classpath/muse/

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
