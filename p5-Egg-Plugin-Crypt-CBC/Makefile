# $NetBSD$

DISTNAME=	Egg-Plugin-Crypt-CBC-3.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/L/LU/LUSHE/}

MAINTAINER=	noud4@users.sourceforge.net
HOMEPAGE=	http://search.cpan.org/~lushe/Egg-Plugin-Crypt-CBC/
COMMENT=	Crypt::CBC for Egg Plugin.

DEPENDS+=	p5-Crypt-CBC>=0:../../security/p5-Crypt-CBC

PKG_DESTDIR_SUPPORT=	none

PERL5_PACKLIST= auto/Egg/Plugin/Crypt/CBC/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
