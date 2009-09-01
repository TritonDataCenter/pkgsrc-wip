# $NetBSD$
#

DISTNAME=	File-ReadBackwards-1.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/U/UR/URI/}

MAINTAINER=	evaldo@gardenali.biz
HOMEPAGE=	http://search.cpan.org/~uri/File-ReadBackwards-1.04/ReadBackwards.pm
COMMENT=	File::ReadBackwards.pm -- Read a file backwards by lines

.include "../../lang/perl5/license.mk"
LICENSE=        ${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=	auto/File/ReadBackwards/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
