# $NetBSD$

DISTNAME=	hdf5storage-0.1.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	https://pypi.python.org/packages/source/h/hdf5storage/
EXTRACT_SUFX=	.zip

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://pypi.python.org/packages/source/h/hdf5storage/
COMMENT=	Utilities to read/write Python types to/from HDF5 files
LICENSE=	modified-bsd

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-h5py>=2.1.1:../../devel/py-h5py
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
