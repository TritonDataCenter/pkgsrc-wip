# $NetBSD$
#

DISTNAME=	DBIx-Easy-0.19
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

MAINTAINER=	ficovh@yahoo.com
HOMEPAGE=	http://search.cpan.org/dist/DBIx-Easy/
COMMENT=	Easy to Use DBI interface
LICENSE=	gnu-gpl-v2

REPLACE_PERL+=	scripts/dbs_dumptabdata
REPLACE_PERL+=	scripts/dbs_dumptabstruct
REPLACE_PERL+=	scripts/dbs_empty
REPLACE_PERL+=	scripts/dbs_printtab
REPLACE_PERL+=	scripts/dbs_update

PERL5_PACKLIST=	auto/DBIx/Easy/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
