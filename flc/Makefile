# $NetBSD$
#

DISTNAME=		flc
PKGNAME=		flc-0.1
CATEGORIES=		wip
MASTER_SITES=		ftp://coombs.anu.edu.au/pub/net/firewall/ip-filter/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		ftp://coombs.anu.edu.au/pub/net/firewall/ip-filter/
COMMENT=		Filter Language Compiler

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flc ${PREFIX}/bin/flc

.include "../../mk/bsd.pkg.mk"
