# $NetBSD: Makefile,v 1.15 2012/10/31 11:16:52 asau Exp $
#

DISTNAME=	dejagnu-1.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=dejagnu/}
LICENSE=	gnu-gpl-v3

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/dejagnu/dejagnu.html
COMMENT=	TCL/Expect-based framework for regression testing

DEPENDS+=	tcl-expect>=5.32.1:../../lang/tcl-expect

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--infodir=${PREFIX}/info
INFO_FILES=	yes

INSTALL_TARGET=	install install-info

#post-install:
#	chmod -x ${DESTDIR}${PREFIX}/share/dejagnu/runtest.exp

.include "../../mk/bsd.pkg.mk"
