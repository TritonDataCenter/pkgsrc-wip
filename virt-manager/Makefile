# $NetBSD: Makefile,v 1.39 2019/09/02 13:20:09 adam Exp $

DISTNAME=	virt-manager-2.2.1
CATEGORIES=	sysutils
MASTER_SITES=	http://virt-manager.org/download/sources/virt-manager/

MAINTAINER=	gls@NetBSD.org
HOMEPAGE=	https://virt-manager.org/
COMMENT=	GUI to manage virtual machines
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-gobject3-[0-9]*:../../devel/py-gobject3
DEPENDS+=	${PYPKGPREFIX}-libvirt-[0-9]*:../../wip/py-libvirt
DEPENDS+=	${PYPKGPREFIX}-requests-[0-9]*:../../devel/py-requests

USE_TOOLS+=	intltool

REPLACE_PYTHON+=	virt-clone
REPLACE_PYTHON+=	virt-convert
REPLACE_PYTHON+=	virt-install
REPLACE_PYTHON+=	virt-manager
REPLACE_PYTHON+=	virt-xml

PYTHON_VERSIONS_INCOMPATIBLE=	27

PYSETUPCONFIGTARGET?=	configure
PYSETUPCONFIGARGS=	--prefix=${PREFIX}
PYSETUPINSTALLARGS=	--prefix=${PREFIX}

SUBST_CLASSES+=		pkgsrcvar
SUBST_STAGE.pkgsrcvar=	do-build
SUBST_FILES.pkgsrcvar=	virtManager/engine.py
SUBST_VARS.pkgsrcvar+=	LOCALBASE VARBASE

do-configure:
	(cd ${WRKSRC}/${PYSETUPSUBDIR} && ${SETENV} ${MAKE_ENV} ${PYTHONBIN} \
	 ${PYSETUP} ${PYSETUPARGS} ${PYSETUPCONFIGTARGET} ${PYSETUPCONFIGARGS})

.include "../../wip/libosinfo/buildlink3.mk"
.include "../../wip/libvirt-glib/buildlink3.mk"
.include "../../x11/vte3/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../wip/python/distutils.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
