# $NetBSD$
#

DISTNAME=		pflkm-3.3-current
PKGNAME=		pflkm-3.3
PKGREVISION=		2
CATEGORIES=		net
MASTER_SITES=		http://unix.se/joelw/pflkm/

MAINTAINER=		imil@gcu.info
HOMEPAGE=		http://foo.unix.se/joelw/pflkm.html
COMMENT=		Pf loadable kernel module for NetBSD

ONLY_FOR_PLATFORM=	NetBSD-2.0*-*

pre-install:
.if !exists(${PREFIX}/lkm)
	@${INSTALL_DATA_DIR} ${PREFIX}/lkm
.endif

USE_BUILDLINK3=		yes

.include "../../mk/bsd.pkg.mk"
