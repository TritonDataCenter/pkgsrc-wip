# $NetBSD: Makefile,v 1.11 2012/10/06 17:22:16 asau Exp $
#

PKGNAME=	${PYPKGPREFIX}-bsddb-${PY_DISTVERSION}
CATEGORIES=	databases

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.python.org/topics/database/
COMMENT=	Python extension module for Berkeley DB 3 and 4


PYDISTUTILSPKG=	yes
PYBINMODULE=	yes

EXTRACT_ELEMENTS=	${PYSUBDIR}/Modules/_bsddb.c

.include "../../lang/python/pyversion.mk"
.if ${PYTHON_VERSION} < 300
EXTRACT_ELEMENTS+=	${PYSUBDIR}/Modules/bsddb.h
.endif

PY_SETUP_SUBST+=	BLPREFIX=${PREFIX}
PY_SETUP_SUBST+=	DBRTPREFIX=${BUILDLINK_PREFIX.db4}
PY_SETUP_SUBST+=	DBPREFIX=${BUILDLINK_PREFIX.db4}

# ignore errors due to missing files (EXTRACT_ELEMENTS!)
do-patch:
	(cd ${WRKSRC}; \
	for f in ${pkgsrc_patches} ${pkgsrc_extra_patches}; do \
	${PATCH} --batch <$$f || true; \
	done)

.include "../../databases/db4/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/srcdist.mk"
.include "../../mk/bsd.pkg.mk"
