# $NetBSD: Makefile,v 1.1 2014/07/25 23:46:19 jihbed Exp $

DISTNAME=	thawab_3.0.13.orig
PKGNAME=	thawab-3.0.13
CATEGORIES=	misc
MASTER_SITES=	http://archive.ubuntu.com/ubuntu/pool/multiverse/t/thawab/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://thwab.ojuba.org/
COMMENT=	Thawab Arabic/Islamic encyclopedia system

DEPENDS+=	${PYPKGPREFIX}-Whoosh>=2.5.7:../../textproc/py-Whoosh
DEPENDS+=	${PYPKGPREFIX}-othman>=0.2.7:../../wip/py-othman
DEPENDS+=	${PYPKGPREFIX}-okasha>=0.2.4:../../wip/py-okasha
DEPENDS+=	${PYPKGPREFIX}-paste>=1.7.5.1:../../www/py-paste

WRKSRC=		${WRKDIR}/thawab-3.0.13

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		intltool msgfmt
USE_LANGUAGES=		# none

PYDISTUTILSPKG=	yes
PYTHON_VERSIONS_ACCEPTED=	27 # py-gtk2

.include "../../devel/pango/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../wip/py-webkit/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
