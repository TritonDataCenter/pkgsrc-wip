# $NetBSD: Makefile,v 1.21 2003/07/28 10:11:45 jmmv Exp $
#

DISTNAME=		libiconv-1.9.1
PKGNAME=		${MINGW_PKG_PREFIX}${DISTNAME}
CATEGORIES=		converters
MASTER_SITES=		${MASTER_SITE_GNU:=libiconv/}

MAINTAINER=		dotz@irc.pl
HOMEPAGE=		http://www.gnu.org/software/libiconv/
COMMENT=		Character set conversion library

USE_BUILDLINK2=		yes
USE_GMAKE=		yes
GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_CROSSBASE=		yes

LIBTOOL_OVERRIDE+=	${WRKSRC}/libtool
LIBTOOL_OVERRIDE+=	${WRKSRC}/libcharset/libtool

.include "../../wip/mk/win32.pkg.mk"
