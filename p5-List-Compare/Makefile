# $NetBSD: Makefile,v 1.1 2009/07/26 00:06:35 pettai Exp $
#

DISTNAME=		List-Compare-0.37
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		perl5 textproc
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=List/}

MAINTAINER=		pettai@nordu.net
HOMEPAGE=		http://search.cpan.org/~jkeenan/List-Compare/
COMMENT=		Compare elements of two or more lists

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/List/Compare/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
