# $NetBSD: Makefile,v 1.24 2003/07/13 13:51:33 wiz Exp $

DISTNAME=	tde-5.1v
CATEGORIES=	editors
MASTER_SITES=	http://adoxa.3eeweb.com/tde/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://adoxa.3eeweb.com/tde/
COMMENT=	Thomson-Davis Editor
#LICENSE=	XXX ?

USE_TOOLS+=	gmake
MAKE_FILE=	makefile
BUILD_TARGET=	tde

SUBST_CLASSES+=		prefix
SUBST_FILES.prefix=	makefile
SUBST_MESSAGE.prefix=	Fixing PREFIX path.
SUBST_SED.prefix=	-e "s|/usr/local|${PREFIX}|g"
SUBST_STAGE.prefix=     post-patch

INSTALLATION_DIRS+=	bin

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
