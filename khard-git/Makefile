# $NetBSD: Makefile,v 1.4 2015/03/27 14:31:14 thomasklausner Exp $

DISTNAME=		khard-0.3.2
CATEGORIES=		time net
MASTER_SITES=		https://github.com/scheibler/khard/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://github.com/scheibler/khard/
COMMENT=		Console carddav client
LICENSE=		gnu-gpl-v3

GIT_REPOSITORIES=	khard
GIT_REPO.khard=		https://github.com/scheibler/khard.git

WRKSRC=			${WRKDIR}/khard

DEPENDS+=		${PYPKGPREFIX}-argparse-[0-9]*:../../devel/py-argparse
DEPENDS+=		${PYPKGPREFIX}-configobj-[0-9]*:../../devel/py-configobj
DEPENDS+=		${PYPKGPREFIX}-vobject-[0-9]*:../../textproc/py-vobject
DEPENDS+=		${PYPKGPREFIX}-vdirsyncer-[0-9]*:../../time/py-vdirsyncer

REPLACE_PYTHON+=	davcontroller/*.py
REPLACE_PYTHON+=	khard/*.py

PYTHON_VERSIONS_ACCEPTED=	27 # as of 20150204

INSTALLATION_DIRS+=	share/examples/khard

post-install:
	${INSTALL_DATA} ${WRKSRC}/khard.conf.example ${DESTDIR}${PREFIX}/share/examples/khard

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
