# $NetBSD$

DISTNAME=	POSIX-strptime-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POSIX/}

MAINTAINER=	tonnerre@thebsh.sygroup.ch
COMMENT=	Perl module for the POSIX strptime function

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/POSIX/strptime/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
