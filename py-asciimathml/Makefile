# $NetBSD$
#

DISTNAME=	asciimathml-0.9.4.1
PKGNAME=        ${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	http://pypi.python.org/packages/source/a/asciimathml/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://github.com/favalex/python-asciimathml
COMMENT=	ASCIIMathML to MathML translator
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/asciimathml-0.9.4.1

USE_LANGUAGES=	# none
PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../textproc/py-elementtree/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
