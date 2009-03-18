# $NetBSD$

DISTNAME=		URI-Find-0.16
PKGNAME=		p5-${DISTNAME}
SVR4_PKGNAME=		p5ufi
CATEGORIES=		textproc perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=URI/}

MAINTAINER=		hiramatu@boreas.dti.ne.jp
HOMEPAGE=		http://search.cpan.org/dist/URI-Find/
COMMENT=		Find URIs in arbitrary text

DEPENDS+=		p5-URI>=1.35:../../www/p5-URI

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/URI/Find/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
