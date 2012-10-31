# $NetBSD$
#

DISTNAME=	tkpng0.9
PKGNAME=	${DISTNAME:S/tkpng/tkpng-/}
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkpng/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.muonics.com/FreeStuff/TkPNG/
COMMENT=	Open source package that adds PNG photo image support to Tcl/Tk
LICENSE=	2-clause-bsd # ?

GNU_CONFIGURE=	yes

.include "../../x11/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
