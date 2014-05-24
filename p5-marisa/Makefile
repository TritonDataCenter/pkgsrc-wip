# $NetBSD$
#

.include "../../wip/marisa/Makefile.common"

PKGNAME=	p5-${DISTNAME}
CATEGORIES+=	perl5

COMMENT=	MARISA perl module

USE_LANGUAGES=	c c++

CONFIGURE_DIRS=	bindings/perl

PERL5_PACKLIST=		auto/marisa/.packlist

post-extract:
	${RM} ${WRKSRC}/bindings/perl/sample.pl

BUILDLINK_API_DEPENDS.marisa+=	marisa>=${PKGVERSION_NOREV}
.include "../../wip/marisa/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
