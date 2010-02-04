# $NetBSD$
#

DISTNAME=	HsHyperEstraier-0.3.2
CATEGORIES=	textproc

MAINTAINER=	pho@cielonegro.org
HOMEPAGE=	http://cielonegro.org/HsHyperEstraier.html
COMMENT=	HyperEstraier binding for Haskell
LICENSE=	public-domain

PKG_DESTDIR_SUPPORT=   user-destdir

.include "../../textproc/hyperestraier/buildlink3.mk"
CONFIGURE_ARGS=	# none

.include "../../wip/mk/haskell.mk"
.include "../../wip/hs-network/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
