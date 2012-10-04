# $NetBSD$

DISTNAME=	Text-CHM-0.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	lkundrak@skosi.org
HOMEPAGE=       http://search.cpan.org/dist/Text-CHM/
COMMENT=	Module that implements a support for handling CHM files
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/Text/CHM/.packlist

.include "../../devel/chmlib/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
