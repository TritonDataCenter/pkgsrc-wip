# $NetBSD$

GITHUB_PROJECT=	canto-curses
DISTNAME=	${GITHUB_PROJECT}-0.9.9
GITHUB_TAG=	v${PKGVERSION_NOREV}
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_GITHUB:=themoken/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/themoken/canto-curses/
COMMENT=	The curses (text) client for canto-daemon
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/canto-curses-0.9.9

PYTHON_VERSIONS_INCOMPATIBLE=	27
PYDISTUTILSPKG=			YES

DEPENDS+=	canto-next-[0-9]*:../../wip/canto-daemon

.include "../../devel/ncursesw/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
