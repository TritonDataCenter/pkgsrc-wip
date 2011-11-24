# $NetBSD: Makefile,v 1.13 2010/12/06 13:57:28 gdt Exp $

DISTNAME=	bzrtools-${VER}
CATEGORIES=	devel scm
MASTER_SITES=	http://launchpad.net/bzrtools/stable/${VER}/+download/
VER=		2.4.1

MAINTAINER=	ddeus.pkgsrc@mailnull.com
HOMEPAGE=	http://bazaar-vcs.org/BzrTools
COMMENT=	Collection of plugins for Bazaar

PKG_DESTDIR_SUPPORT=	user-destdir
# Only this python versions are supported, see:
# http://doc.bazaar.canonical.com/bzr.dev/en/whats-new/whats-new-in-2.4.html
PYTHON_VERSIONS_ACCEPTED=	27 26

PYDISTUTILSPKG=	yes
PYTHON_PATCH_SCRIPTS= check-release.py test.py

WRKSRC=		${WRKDIR}/bzrtools

.include "../../wip/bzr/plugin.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
