# $NetBSD$

DISTNAME=		Class-Singleton-1.03
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

MAINTAINER=		cube@cubidou.net
HOMEPAGE=		http://search.cpan.org/dist/Class-Singleton/
COMMENT=		Perl module to implement Singleton classes

USE_BUILDLINK2=	YES
PERL5_PACKLIST=	${PERL5_SITEARCH}/auto/Class/Singleton/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
