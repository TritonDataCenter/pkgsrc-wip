# $NetBSD$

DISTNAME=	PyArabic-0.5.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/Py//tl}
CATEGORIES=	textproc python
MASTER_SITES=	https://pypi.python.org/packages/source/P/PyArabic/
EXTRACT_SUFX=	.zip

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://pyarabic.sourceforge.net/
COMMENT=	Arabic text tools
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/PyArabic-0.5

USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
