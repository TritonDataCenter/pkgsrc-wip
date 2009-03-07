# $NetBSD$

DISTNAME=	packman-0.0.9
CATEGORIES=	pkgtools
MASTER_SITES=	http://kefren.ngnetworks.ro/

MAINTAINER=	mihai.chelaru@ngnetworks.ro
HOMEPAGE=	http://kefren.ngnetworks.ro/
COMMENT=	Small package manager

USE_TOOLS+=	perl:run

DEPENDS+=	p5-pkgsrc-Dewey>=1.0:../../pkgtools/p5-pkgsrc-Dewey

USE_LANGUAGES=	# empty
REPLACE_PERL+=	packman.pl

do-build:
do-install:
	install ${WRKSRC}/packman.pl ${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
