# $NetBSD$

DISTNAME=	ghmm-0.9-rc3
CATEGORIES=	math
MASTER_SITES=	http://downloads.sourceforge.net/project/ghmm/ghmm/ghmm%200.9-rc3/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://ghmm.org/
COMMENT=	General Hidden Markov Model Library in C
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

.include "options.mk"

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
