# $NetBSD$

DISTNAME=	kdeaccessibility-${_KDE_VERSION}
CATEGORIES=	misc
COMMENT=	Accessibility support for the KDE integrated X11 desktop

.include "../../wip/kde4/Makefile.kde4"

BUILD_MAKE_FLAGS+= VERBOSE=1

.include "../../wip/kde4/kde4.mk"

#.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../wip/kdelibs4/buildlink3.mk"
.include "../../wip/kdebase-runtime4/buildlink3.mk"
.include "../../wip/kdebase-workspace4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
