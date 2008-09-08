# $NetBSD$

.include "../../wip/io/version.mk"

PKGNAME=		io-securesocket-${IO_VERSION}
PKGREVISION=		0
CATEGORIES=		devel

MAINTAINER=		milos.negovanovic@googlemail.com
HOMEPAGE=		www.iolanguage.com
COMMENT=		SSL socket addon for Io.

#DEPENDS+=       	io-socket>=${IO_VERSION}:../../wip/io-socket

ADDON_NAME=			SecureSocket
ADDON_DEPENDS_ON_ADDONS=	Socket

.include "../../wip/io/addon.mk"
#.include "../../wip/io-socket/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
