# $NetBSD: Makefile,v 1.10 2021/11/22 18:34:57 adam Exp $

DISTNAME=	orjson-3.9.10
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=o/orjson/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/ijl/orjson
COMMENT=	Fast, correct Python JSON library
LICENSE=	apache-2.0 OR mit

TOOL_DEPENDS+=	${PYPKGPREFIX}-maturin-[0-9]*:../../devel/py-maturin

PYTHON_VERSIONS_INCOMPATIBLE=	27

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} maturin-${PYVERSSUFFIX} build

WHEELFILE=	${WRKSRC}/target/wheels/*.whl

.include "cargo-depends.mk"
.include "../../lang/python/pyversion.mk"
.include "../../lang/python/tool.mk"
.include "../../lang/python/wheel.mk"
.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"
