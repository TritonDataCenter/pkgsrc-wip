# $NetBSD$

DISTNAME=		ltp-0.0
CATEGORIES=		devel
GIT_REPOSITORIES=	ltp
GIT_REPO.ltp=		https://github.com/linux-test-project/ltp.git
WRKSRC=			${WRKDIR}/ltp

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://linux-test-project.github.io/
COMMENT=	Testing Linux, one syscall at a time
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config gmake aclocal autoconf automake autoreconf perl unzip zip

PKGCONFIG_OVERRIDE+=	lib/ltp.pc.in

pre-configure:
	cd ${WRKSRC} && autoreconf -fiv

INSTALL_MAKE_FLAGS+=	SKIP_IDCHECK=1

.include "../../lang/python/application.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
