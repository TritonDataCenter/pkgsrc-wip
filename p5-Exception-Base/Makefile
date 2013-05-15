# $NetBSD$

DISTNAME=	Exception-Base-0.2401
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/D/DE/DEXTER/}

MAINTAINER=	ggm@apnic.net
HOMEPAGE=	http://search.cpan.org/dist/Exception-Base/
COMMENT=	Exception::Base
LICENSE=	${PERL5_LICENSE}

BUILD_DEPENDS+=	p5-Test-Unit-Lite>=0.12:../../wip/p5-Test-Unit-Lite

PERL5_PACKLIST=	auto/Exception/Base/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
