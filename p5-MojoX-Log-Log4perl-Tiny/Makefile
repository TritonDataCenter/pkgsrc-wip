# $NetBSD: Makefile,v 1.139 2018/09/02 07:55:30 wiz Exp $
#
# When updating this package, please upload the distfile
# since they disappear immediately when new releases happen,
# which is quite often.

DISTNAME=	MojoX-Log-Log4perl-Tiny-0.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MojoX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/pod/MojoX::Log::Log4perl::Tiny
COMMENT=	Minimalistic Log4perl adapter for Mojolicious
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MojoX/Log/Log4perl/Tiny/.packlist

PERL5_MODULE_TYPE=	Module::Build

TOOL_DEPENDS+=		p5-Module-Build-Tiny-[0-9]*:../../devel/p5-Module-Build-Tiny

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
