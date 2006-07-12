# $NetBSD$
#

DISTNAME=		git-110
PKGNAME=		git-1.1.0
CATEGORIES=		games
MASTER_SITES=		http://diden.net/if/git/releases/
EXTRACT_SUFX=		.zip

MAINTAINER=		dillo@NetBSD.org
HOMEPAGE=		http://diden.net/if/git/
COMMENT=		Interpreter for Glulx interactive fiction

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
MAKE_ENV+=		BUILDLINK_DIR=${BUILDLINK_DIR:Q}

PKG_OPTIONS_VAR=	PKG_OPTIONS.git
.include "../../wip/glkloader/glk-options.mk"
.include "../../mk/bsd.options.mk"
.include "../../wip/glkloader/glk-depends.mk"

.include "../../mk/bsd.pkg.mk"
