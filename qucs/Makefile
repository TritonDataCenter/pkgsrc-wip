# $NetBSD: Makefile,v 1.42 2008/02/02 04:50:20 10.50 Exp $
#

DISTNAME=	qucs-0.0.13
PKGREVISION=	2
CATEGORIES=	cad
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qucs/}
SUBDIR+=	qucs

MAINTAINER=	10.50@free.fr
HOMEPAGE=	http://qucs.sourceforge.net/
COMMENT=	Microwave and IC-design oriented EDS tool

DEPENDS+=	flex>=2.5.34:../../devel/flex
DEPENDS+=	adms>=2.2.8:../../wip/adms

PKG_DESTDIR_SUPPORT=	none

GNU_CONFIGURE=		yes

USE_TOOLS+=		gmake bison sed awk grep
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
INFO_FILES=		yes

.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../x11/qt3-tools/buildlink3.mk"
.include "../../devel/gperf/buildlink3.mk"
.include "../../mk/bsd.prefs.mk"
.include "../../mk/bsd.pkg.mk"
