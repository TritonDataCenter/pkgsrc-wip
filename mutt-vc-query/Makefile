# $NetBSD: Makefile,v 1.3 2003/03/16 14:02:23 cjep Exp $

DISTNAME=	mutt_vc_query-002
CATEGORIES=	databases
MASTER_SITES=	http://osdn.dl.sourceforge.net/sourceforge/rolo/

MAINTAINER=	bjan+pkgsrc@bjan.net
HOMEPAGE=	http://rolo.sf.net/
COMMENT=	Mutt query interface for rolo

USE_BUILDLINK2=	YES
GNU_CONFIGURE=	YES
CONFIG_GUESS_OVERRIDE=	${WRKSRC}/config.guess
CONFIG_SUB_OVERRIDE=	${WRKSRC}/config.sub

.include "../../wip/libvc/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
