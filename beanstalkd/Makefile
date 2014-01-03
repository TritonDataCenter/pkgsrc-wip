# $NetBSD$
#

DISTNAME=	v1.9
PKGNAME=	beanstalkd${DISTNAME:S/v/-/1}
CATEGORIES=	net
MASTER_SITES=	https://github.com/kr/beanstalkd/archive/
FETCH_USING=	curl

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://kr.github.io/beanstalkd/
COMMENT=	Simple, fast work queue
LICENSE=	mit

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
USE_TOOLS+=	gmake

post-patch:
	${CP} ${WRKSRC}/freebsd.c ${WRKSRC}/netbsd.c

.include "../../mk/bsd.pkg.mk"
