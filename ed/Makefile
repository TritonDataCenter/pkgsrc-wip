# $NetBSD$

DISTNAME=		ed-0.2
CATEGORIES=		editors
MASTER_SITES=		${MASTER_SITE_GNU:=ed/}

MAINTAINER=		packages@netbsd.org
HOMEPAGE=		http://www.gnu.org/software/ed/ed.html
COMMENT=		GNU version of line-oriented text editor

GNU_CONFIGURE=		YES

.include "../../mk/bsd.prefs.mk"

.if defined(GNU_PROGRAM_PREFIX)
# the ./configure accepts --program-prefix, but doesn't use
MAKE_ENV+=		binprefix="${GNU_PROGRAM_PREFIX}"
.endif
PLIST_SUBST+=           GNU_PROGRAM_PREFIX=${GNU_PROGRAM_PREFIX}
BUILD_DEFS+=            GNU_PROGRAM_PREFIX

.include "../../mk/texinfo.mk"
.include "../../mk/bsd.pkg.mk"
