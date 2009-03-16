# $NetBSD$
#

DISTNAME=	clhep-2.0.4.2
CATEGORIES=	math
MASTER_SITES=	http://cern.ch/clhep/distributions/ \
		http://cern.ch/clhep/
EXTRACT_SUFX=	.tgz

MAINTAINER=	hugor@users.sourceforge.net
HOMEPAGE=	http://proj-clhep.web.cern.ch/proj-clhep/
COMMENT=	Class library for high energy physics

PKG_DESTDIR_SUPPORT=	user-destdir

TMPEXT_DIR=	${WRKDIR}/${PKGVERSION_NOREV}/CLHEP
AUTOCONF_REQD=	2.59
USE_TOOLS+=	aclocal autoconf automake gmake perl

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT= ${TMPEXT_DIR}/configure
USE_LANGUAGES=	c c++

pre-configure:
	${MKDIR} ${WRKSRC};	\
	cd ${TMPEXT_DIR};	\
	autoconf;	\
	aclocal;	\
	automake -a --foreign -i

.include	"../../mk/bsd.pkg.mk"
