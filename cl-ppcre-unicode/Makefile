# $NetBSD$
#

VERSION=        2.0.3
SHORTNAME=	cl-ppcre-unicode
DISTNAME=	${SHORTNAME:S/-unicode$//}
CATEGORIES=	devel
MASTER_SITES=	http://weitz.de/files/

MAINTAINER=     ddeus.pkgsrc@mailnull.com
HOMEPAGE=	http://weitz.de/cl-fad/
COMMENT=        CL-PPCRE-UNICODE is the CL-PPCRE package with Unicode support
LICENSE=        modified-bsd

WRKSRC=			${WRKDIR}/${DISTNAME}-${VERSION}
DEPENDS+=		${LISP_PREFIX}-ppcre-${VERSION}:../../wip/cl-ppcre
DEPENDS+=		${LISP_PREFIX}-unicode-[0-9]*:../../wip/cl-unicode

.include "options.mk"
.include "../../wip/mk/cl-package.mk"
.include "../../mk/bsd.pkg.mk"
