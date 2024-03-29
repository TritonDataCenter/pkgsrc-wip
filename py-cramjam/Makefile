# $NetBSD$

VERSION=		2.7.0
PKGVERSION_NOREV=	${VERSION}
GITHUB_TAG=		v${PKGVERSION_NOREV}
DISTNAME=		pyrus-cramjam-${VERSION}
PKGNAME=		${PYPKGPREFIX}-cramjam-${VERSION}
WHEEL_NAME=		cramjam-${VERSION}
GITHUB_PROJECT=		pyrus-cramjam
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_GITHUB:=milesgranger/}

MAINTAINER=	matthewd@fastmail.us
HOMEPAGE=	https://github.com/milesgranger/pyrus-cramjam
COMMENT=	Extremely thin Python bindings to de/compression algorithms in Rust
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-maturin-[0-9]*:../../devel/py-maturin
DEPENDS+=	${PYPKGPREFIX}-numpy>=1.18:../../math/py-numpy
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test
TEST_DEPENDS+=	${PYPKGPREFIX}-hypothesis-[0-9]*:../../devel/py-hypothesis

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} maturin-${PYVERSSUFFIX} build -i ${PYTHONBIN} --offline --manifest-path cramjam-python/Cargo.toml

# Test Requires install
do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${PYTHONBIN} -m pytest -s tests

WHEELFILE=		${WRKSRC}/target/wheels/*.whl

.include "cargo-depends.mk"
.include "../../lang/python/pyversion.mk"
.include "../../lang/python/tool.mk"
.include "../../lang/python/wheel.mk"
.include "../../lang/rust/cargo.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
