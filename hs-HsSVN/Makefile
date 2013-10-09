# $NetBSD$
#

DISTNAME=	HsSVN-0.4.3.3
CATEGORIES=	devel

MAINTAINER=	pho@cielonegro.org
COMMENT=	Subversion binding for Haskell
LICENSE=	public-domain

CONFIGURE_ARGS+= \
	--configure-option=--with-subversion-prefix=${PREFIX:Q}

.include "../../wip/mk/haskell.mk"
.include "../../wip/hs-mtl/buildlink3.mk"
.include "../../wip/hs-stm/buildlink3.mk"
.include "../../devel/subversion-base/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
