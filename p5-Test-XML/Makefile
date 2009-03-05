# $NetBSD$

DISTNAME=	Test-XML-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pho@cielonegro.org
HOMEPAGE=	http://search.cpan.org/dist/Test-XML/
COMMENT=	Compare XML in perl tests

DEPENDS+=	p5-XML-SemanticDiff>=0.95:../../textproc/p5-XML-SemanticDiff
DEPENDS+=	p5-XML-Parser>=2.34:../../textproc/p5-XML-Parser

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=	auto/Test/XML/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
