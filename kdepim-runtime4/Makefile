# $NetBSD$

DISTNAME=	kdepim-runtime-${_KDE_VERSION}
CATEGORIES=	misc
COMMENT=	Runtime requirements for the KDE PIM tools

.include "../../wip/kde4/Makefile.kde4"

PKG_DESTDIR_SUPPORT=	user-destdir

# BUILD_MAKE_FLAGS+= VERBOSE=1

.include "../../wip/kde4/kde4.mk"

.include "../../wip/kdepimlibs4/buildlink3.mk"
.include "../../wip/kdelibs4/buildlink3.mk"
.include "../../wip/kdelibs-experimental4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
