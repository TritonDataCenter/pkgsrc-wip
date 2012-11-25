# $NetBSD$
#

DISTNAME=	udhcp-0.9.8
CATEGORIES=	net
MASTER_SITES=	http://udhcp.busybox.net/source/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.busybox.net/
COMMENT=	Embedded DHCP Client/Server

PKG_DESTDIR_SUPPORT=	none

USE_TOOLS+=	gmake

ONLY_FOR_PlATFORM=	Linux-*-*

SUBST_CLASSES+= prefix
SUBST_STAGE.prefix=pre-build
SUBST_FILES.prefix=Makefile
SUBST_SED.prefix=\
	-e "s|prefix=|prefix=${PREFIX}\#|" \
	-e "s|SBINDIR=|SBINDIR=${PREFIX}/sbin \#|"

.include "../../mk/bsd.pkg.mk"
