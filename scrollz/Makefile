# $NetBSD: Makefile,v 1.15 2012/06/12 15:45:55 wiz Exp $
#

DISTNAME=	ScrollZ-2.2.2
PKGNAME=	${DISTNAME:tl}
CATEGORIES=	chat
MASTER_SITES=	ftp://ftp.scrollz.com/pub/ScrollZ/source/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.scrollz.com/
COMMENT=	Advanced IRC client based on ircII client
LICENSE=	modified-bsd # XXX ?

MAKE_JOBS_SAFE=	no

GNU_CONFIGURE=	yes

.include "options.mk"

post-install:
		${CHMOD} -x ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/scrollz.1


.include "../../mk/bsd.pkg.mk"
