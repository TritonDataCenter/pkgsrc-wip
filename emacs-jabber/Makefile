# $NetBSD$

DISTNAME=     emacs-jabber-0.7
PKGNAME=      ${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=  1
CATEGORIES=   chat
MASTER_SITES= ${MASTER_SITE_SOURCEFORGE:=emacs-jabber/}

MAINTAINER=   tonio@NetBSD.org
HOMEPAGE=     http://emacs-jabber.sourceforge.net/
COMMENT=      Minimal jabber client for emacs

DEPENDS+=     ${EMACS_PKGNAME_PREFIX}-gnus>=5.10:../../mail/gnus
USE_TOOLS+=   makeinfo
INFO_FILES=   # PLIST

NO_CONFIGURE= yes

INSTALLATION_DIRS=	${EMACS_LISPPREFIX}/emacs-jabber ${EMACS_INFOPREFIX}
do-build:
	cd ${WRKSRC} && makeinfo jabber.texi

do-install:
	${INSTALL_DATA} ${WRKSRC}/*.el* ${EMACS_LISPPREFIX}/emacs-jabber
	${INSTALL_DATA} ${WRKSRC}/jabber.info ${EMACS_INFOPREFIX}

.include "../../mk/emacs.mk"
.include "../../mk/bsd.pkg.mk"
