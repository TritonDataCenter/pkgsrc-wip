# $NetBSD: $

DISTNAME=		Barcode-Code128-2.01
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		databases perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Barcode/}

MAINTAINER=		phil@cs.wwu.edu
HOMEPAGE=		http://search.cpan.org/~wrw/Barcode-Code128-2.01
COMMENT=		Generates bar codes using the CODE 128 symbology

PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=		p5-GD>=1.18:../../graphics/p5-GD

PERL5_PACKLIST=	auto/Barcode/Code128/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
