# $NetBSD: Makefile,v 1.12 2014/05/09 07:38:51 thomasklausner Exp $

DISTNAME=	pydb-1.26
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bashdb/}
EXTRACT_SUFX=	.tar.bz2
LICENSE=	gnu-gpl-v3

MAINTAINER=	splitscreen@users.sourceforge.net
HOMEPAGE=	https://sourceforge.net/projects/bashdb/
COMMENT=	The Extended Python Debugger

DEPENDS+=	${PYPKGPREFIX}-ipython-[0-9]*:../../devel/py-ipython

GNU_CONFIGURE=	yes
USE_LANGUAGES=	# none

CONFIGURE_ARGS+=	--enable-pyreadline

PY_PATCHPLIST=	yes
PYTHON_VERSIONS_ACCEPTED=	27 # py-ipython

.include "../../lang/python/extension.mk"
.include "../../lang/python/pyversion.mk"
.include "../../mk/bsd.pkg.mk"
