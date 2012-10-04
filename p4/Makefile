# $NetBSD: Makefile,v 1.5 2008/03/03 17:45:36 jlam Exp $
#

DISTNAME=	p4
HOMEPAGE=	http://www.perforce.com/product/components/perforce_commandline_client
COMMENT=	Perforce SCM command-line client

P4BINONLY=	yes
EXTRACT_ONLY=	# none

.include "../../wip/p4/Makefile.common"

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_SCRIPT} ${DISTDIR}/${DIST_SUBDIR}/${DISTNAME} \
		${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
