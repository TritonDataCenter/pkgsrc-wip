# $NetBSD$

DISTNAME=	fnteditfs-1.1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fonteditfs/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	lkundrak@skosi.org
HOMEPAGE=	http://fonteditfs.sourceforge.net/
COMMENT=	Small, simple font editor, designed for editing console fonts

PKG_DESTDIR_SUPPORT=	none

BUILD_TARGET=	fnteditfs

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
