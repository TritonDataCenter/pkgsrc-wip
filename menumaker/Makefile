# $NetBSD$
#

DISTNAME=		MenuMaker-0.17
CATEGORIES=		wm
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=menumaker/}

MAINTAINER=		low@ameba6.com
HOMEPAGE=		http://belnet.dl.sourceforge.net/sourceforge/menumaker/
COMMENT=		MenuMaker is written in Python and generates menu for XWindow managers

PYDISTUTILSPKG=		yes
PYBINMODULE=    	yes
PYSETUPOPTARGS?=       
#USE_BUILDLINK3=        yes
PY_PATCHPLIST=          yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
