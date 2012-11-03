# $NetBSD$
#

DISTNAME=	creal-0.7
PKGREVISION=	1
CATEGORIES=	math
MASTER_SITES=	http://www.lri.fr/%7Efilliatr/ftp/ocaml/ds/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.lri.fr/~filliatr/creal.en.html
COMMENT=	Exact real arithmetic library (constructive reals) for ocaml
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake

BUILD_TARGET=	all
INSTALL_ENV+=	DESTDIR=${DESTDIR}


.include "../../devel/gmp/buildlink3.mk"
.include "../../lang/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
