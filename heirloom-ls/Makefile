# $NetBSD$

NEED_LIBCURSES=	1

.include "../../wip/heirloom-common/Makefile.prog2.common"

PKGNAME=	heirloom-ls-${HEIRLOOM_VER}
CATEGORIES=	textproc

MAKE_FLAGS+=	SUBDIRS="libcommon build ls"

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
