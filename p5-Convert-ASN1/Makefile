# $NetBSD: Makefile,v 1.13 2005/04/11 21:45:08 tv Exp $

DISTNAME=	Convert-ASN1-0.18
PKGNAME=	p5-${DISTNAME}
SVR4_PKGNAME=	p5asn1
PKGREVISION=	1
CATEGORIES=	converters perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Convert/}
PKGNAMEPREFIX=	p5-

MAINTAINER=	geeogeegeeoh@users.sourceforge.net
COMMENT=	Perl5 module to encode and decode ASN.1 data structures

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		${PERL5_SITEARCH}/auto/Convert/ASN1/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
