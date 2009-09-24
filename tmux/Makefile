# $NetBSD: Makefile,v 1.1.1.1 2009/03/06 12:16:17 hasso Exp $

DISTNAME=	tmux-1.0
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tmux/}

MAINTAINER=	hasso@NetBSD.org
HOMEPAGE=	http://tmux.sourceforge.net/
COMMENT=	BSD-licensed terminal multiplexer (GNU Screen alternative)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_NCURSES=	yes

HAS_CONFIGURE= yes

INSTALL_MAKE_FLAGS+= \
   INSTALL_MAN=${INSTALL_MAN:Q} \
   INSTALL_MAN_DIR=${INSTALL_PROGRAM_DIR:Q} \
   INSTALL_PROGRAM_DIR=${INSTALL_PROGRAM_DIR:Q} \
   INSTALL_PROGRAM=${INSTALL_PROGRAM:Q}

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
