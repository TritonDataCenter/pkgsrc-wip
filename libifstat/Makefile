# $NetBSD$
#

PKGNAME=		libifstat-1.1
DISTNAME=		ifstat-1.1
CATEGORIES=		net devel
MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		florian@geiges.net
HOMEPAGE=		http://gael.roualland.free.fr/ifstat/
COMMENT=		Tool to report network interface bandwidth, shared library version
LICENSE=		gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	none
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-library

do-postinstall:
	rm ${DESTDIR}${PREFIX}/bin/ifstat
	rm ${DESTDIR}${PREFIX}man/man1/ifstat.1

.include		"./options.mk"
.include		"../../mk/bsd.pkg.mk"
