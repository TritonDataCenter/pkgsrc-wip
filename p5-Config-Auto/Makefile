# $NetBSD$
#

DISTNAME=	Config-Auto-0.20
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/K/KA/KANE/

MAINTAINER=	ficovh@yahoo.com
HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/K/KA/KANE/
COMMENT=	Magical config file parser

DEPENDS+=	p5-Config-IniFiles>=0:../../devel/p5-Config-IniFiles
DEPENDS+=	p5-YAML>=0:../../textproc/p5-YAML
DEPENDS+=	p5-XML-Simple>=0:../../textproc/p5-XML-Simple

PERL5_PACKLIST=	auto/Config/Auto/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
