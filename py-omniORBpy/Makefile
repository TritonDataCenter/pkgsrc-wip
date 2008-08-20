# $NetBSD: Makefile,v 1.12 2008/04/25 20:39:09 joerg Exp $

DISTNAME=	omniORBpy-3.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=omniorb/}

MAINTAINER=	tonnerre@NetBSD.org
HOMEPAGE=	http://omniorb.sourceforge.net/
COMMENT=	Python interface to omniORB

PKG_DESTDIR_SUPPORT=	user-destdir

PLIST_SUBST+=	PYINC=${PYINC} PYSITELIB=${PYSITELIB}
GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES+=	c c++
MAKE_FILE=	GNUmakefile

.include "../../lang/python/application.mk"
.include "../../wip/omniORB/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
