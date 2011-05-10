# $NetBSD$
#

DISTNAME=	SPARQLWrapper-1.4.2
PKGNAME=	${PYPKGPREFIX}-spaqrlwrapper-1.4.2
CATEGORIES=	www python
MASTER_SITES=	http://pypi.python.org/packages/source/S/SPARQLWrapper/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sparql-wrapper.sourceforge.net/
COMMENT=	SPARQL endpoint interface to Python

DEPENDS+=	${PYPKGPREFIX}-simplejson>=2.1.1:../../converters/py-simplejson
DEPENDS+=	${PYPKGPREFIX}-rdflib>=2.4.2:../../wip/py-rdflib

PKG_DESTDIR_SUPPORT=	user-destdir

PYTHON_VERSIONS_ACCEPTED= 27 26

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
