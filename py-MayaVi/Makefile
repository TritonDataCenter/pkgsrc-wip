# $NetBSD$
#

DISTNAME=		MayaVi-1.3
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mayavi/}

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://mayavi.sourceforge.net/
COMMENT=		Scientific data visualizer written in Python

DEPENDS=	${PYPKGPREFIX}-vtkmodule>=4.2:../../wip/vtk-python

USE_BUILDLINK3=		yes
PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../x11/py-Tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
