# $NetBSD$
#

DISTNAME=	GraphPath-0.7
PKGNAME=	${PYPKGPREFIX}-graphpath-0.7
CATEGORIES=	devel python
MASTER_SITES=	http://www.langdale.com.au/GraphPath/dist/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://www.langdale.com.au/GraphPath/
COMMENT=	Analysing graph-structured data, especially RDF
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-rdflib>=2.4.2:../../wip/py-rdflib

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none
PYDISTUTILSPKG=	yes

do-test:
	${RUN} cd ${WRKSRC}; ${SETENV} ${TEST_ENV} ${PYTHONBIN} test.py

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
