# $NetBSD: Makefile,v 1.9 2014/05/09 07:38:48 thomasklausner Exp $

DISTNAME=	jabberbot-0.15
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	chat python
MASTER_SITES=	http://thp.io/2007/python-jabberbot/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${MASTER_SITES}
COMMENT=	Module to enable easy creation of XMPP bots in Python
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-xmpppy>=0.5.0rc1:../../chat/py-xmpppy

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED=	27 # py-xmpppy

EXDIR=		${PREFIX}/share/examples/py-jabberbot

INSTALLATION_DIRS+=	${EXDIR}

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${EXDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${DESTDIR}${EXDIR}

.include "../../wip/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
