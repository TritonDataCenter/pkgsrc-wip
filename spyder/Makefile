# $NetBSD$

DISTNAME=	spyder-2.3.1
CATEGORIES=	wip
MASTER_SITES=	https://bitbucket.org/spyder-ide/spyderlib/downloads/
EXTRACT_SUFX=	.zip

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://code.google.com/p/spyderlib/
COMMENT=	Scientific PYthon Development EnviRonment
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-sphinx>=1.2.1:../../textproc/py-sphinx

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		intltool msgfmt
USE_LANGUAGES=		c

PYDISTUTILSPKG=	yes

INSTALLATION_DIRS=     share/applications
post-extract:
	${CP} ${FILESDIR}/spyder.desktop ${WRKSRC}

post-install:
	${INSTALL_DATA} ${WRKSRC}/spyder.desktop  \
		${DESTDIR}${PREFIX}/share/applications

.include "options.mk"

.include "../../lang/python/extension.mk"
.include "../../x11/py-qt4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"