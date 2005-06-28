# $NetBSD: Makefile,v 1.13 2005/04/11 21:46:56 tv Exp $

DISTNAME=	X500-DN-0.28
PKGNAME=	p5-X500-DN-0.28
SVR4_PKGNAME=	x500dn
PKGREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=X500/}

MAINTAINER=	geeogeegeeoh@users.sourceforge.net
COMMENT=	Handle X.500 DNs (Distinguished Names), parse and format them

DEPENDS+=       p5-Parse-RecDescent>=1.94:../../devel/p5-Parse-RecDescent

WRKSRC=			${WRKDIR}/X500-DN-0.28
PERL5_PACKLIST=		${PERL5_SITEARCH}/auto/X500/DN/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
