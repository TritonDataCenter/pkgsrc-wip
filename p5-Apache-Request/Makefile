# $NetBSD$
#

DISTNAME=		libapreq-1.3
PKGNAME=		p5-${DISTNAME}
SVR4_PKGNAME=		p5apr
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=		adam@migus.org
HOMEPAGE=		http://httpd.apache.org/apreq/
COMMENT=		Methods for dealing with client request data

USE_BUILDLINK2=		YES
PERL5_PACKLIST=		${PERL5_SITEARCH}/auto/libapreq/.packlist

.include "../../www/ap-perl/buildlink2.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
