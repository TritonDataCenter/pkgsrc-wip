# $NetBSD$

DISTNAME=	MIME-Types-1.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MIME/}

MAINTAINER=	adrianp@stindustries.net
HOMEPAGE=	http://perl.overmeer.net/mimetypes/
COMMENT=	Definition of MIME types

USE_BUILDLINK2=	YES
PERL5_PACKLIST=	${PERL5_SITEARCH}/auto/MIME/Types/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
