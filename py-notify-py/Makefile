# $NetBSD$

DISTNAME=	notify_py-0.2.3
PKGNAME=        ${PYPKGPREFIX}-notify-py-0.2.3
CATEGORIES=	sysutils python
MASTER_SITES=	${MASTER_SITE_PYPI:=n/notify_py/}

MAINTAINER=     kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/ms7m/notify-py
COMMENT=	Cross-platform desktop notification library for Python
LICENSE=	mit

USE_TOOLS+=	bash

DEPENDS+=       ${PYPKGPREFIX}-loguru>=0.5.1:../../sysutils/py-loguru

REPLACE_BASH+=	notifypy/os_notifiers/binaries/Notificator.app/Contents/Resources/Scripts/notificator

post-extract:
	${CP} ${FILESDIR}/netbsd.py ${WRKSRC}/notifypy/os_notifiers

.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
