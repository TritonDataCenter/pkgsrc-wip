# $NetBSD$
#

DISTNAME=		ccsh-0.0.4
CATEGORIES=		wip lang
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ccsh/}

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://ccsh.sourceforge.net/
COMMENT=		C-like syntax scripting

USE_GNU_TOOLS+=		make
USE_BUILDLINK2=		yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ccsh ${PREFIX}/bin/ccsh

.include "../../mk/bsd.pkg.mk"
