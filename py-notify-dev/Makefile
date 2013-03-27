# $NetBSD: Makefile,v 1.28 2012/10/23 19:51:21 asau Exp $
#

DISTNAME=	py-notify-0.3.1
PKGNAME=	${DISTNAME:S/py/${PYPKGPREFIX}/1}-dev
CATEGORIES=	sysutils
MASTER_SITES=	http://download.gna.org/py-notify/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://home.gna.org/py-notify/
COMMENT=	Python bindings for libnotify - development branch
LICENSE=	gnu-lgpl-v2.1

PYDISTUTILSPKG=	yes
CONFLICTS+=	${PYPKGPREFIX}-notify-[0-9]*:../../sysutils/py-notify

.include "../../lang/python/extension.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
