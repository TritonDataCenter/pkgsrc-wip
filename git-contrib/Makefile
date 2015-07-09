# $NetBSD$

.include "../../devel/git/Makefile.common"

PKGNAME=	git-contrib-${GIT_VERSION}
COMMENT=	GIT Tree History Storage Tool (contrib)

DEPENDS+=	git-base-[0-9]*:../../devel/git-base

BUILD_DIRS=	contrib/subtree

MAKE_FLAGS+=	DESTDIR=${DESTDIR}
MAKE_FLAGS+=	prefix=${PREFIX}

.include "../../mk/bsd.pkg.mk"
