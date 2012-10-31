# $NetBSD$
#

DISTNAME=	MMapDB-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/O/OP/OPI/}

MAINTAINER=	wenheping@gmail.com
HOMEPAGE=	http://search.cpan.org/dist/MMapDB
COMMENT=	Simple database in shared memory
LICENSE=	${PERL5_LICENSE}

DEPENDS+=		p5-File-Map>=0:../../wip/p5-File-Map

PERL5_PACKLIST=		auto/MMapDB/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
