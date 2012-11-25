# $NetBSD$
#

DISTNAME=		mksend-0.5.3
CATEGORIES=		net
MASTER_SITES=		ftp://ftp.nopcode.org/prj/mksend/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.nopcode.org/?t=mksend
COMMENT=		Network testing tool for capture and generate packets

PKG_DESTDIR_SUPPORT=	none

GNU_CONFIGURE=		YES
USE_TOOLS+=		gmake

ONLY_FOR_PLATFORM=	Linux-*-* FreeBSD-*-*

.include "../../wip/libparsifal/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
