# $NetBSD$
#

DISTNAME=	ditz-0.5
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel

MAINTAINER=	pho@cielonegro.org
HOMEPAGE=	http://ditz.rubyforge.org/
COMMENT=	Simple, light-weight distributed issue tracker
LICENSE=	gnu-gpl-v3

BUILD_DEPENDS+=	${RUBY_PKGPREFIX}-hoe-[0-9]*:../../devel/hoe
DEPENDS+=	${RUBY_PKGPREFIX}-trollop-[0-9]*:../../wip/ruby-trollop

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
