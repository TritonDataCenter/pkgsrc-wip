# $NetBSD: Makefile,v 1.14 2005/10/15 19:13:34 tonio Exp $
#

DISTNAME=	abook-0.5.5pre1
CATEGORIES=	databases
MASTER_SITES=	http://abook.sourceforge.net/devel/

MAINTAINER=	geert.hendrickx@ua.ac.be
HOMEPAGE=	http://abook.sourceforge.net/
COMMENT=	Text-based addressbook program

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_GNU_READLINE=	yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
