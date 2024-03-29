# $NetBSD: Makefile,v 1.48 2019/09/02 13:19:44 adam Exp $

DISTNAME=	anki-2.1.15-source
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:C/anki/anki2/:C/-source//}
CATEGORIES=	misc x11
MASTER_SITES=	https://apps.ankiweb.net/downloads/current/
MASTER_SITES+=	https://apps.ankiweb.net/downloads/archive/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ankisrs.net/
COMMENT=	Flashcard learning program (v2)
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-decorator-[0-9]*:../../devel/py-decorator
DEPENDS+=	${PYPKGPREFIX}-qt5>=4.4:../../x11/py-qt5
# Actually, these hurt more than they help.
# anki comes with its own version of the two, and if the pkgsrc versions
# are newer, it might break
#DEPENDS+=	${PYPKGPREFIX}-beautifulsoup>=3.2:../../www/py-beautifulsoup
#DEPENDS+=	${PYPKGPREFIX}-httplib2-[0-9]*:../../www/py-httplib2
# XXX: python portaudio

WRKSRC=		${WRKDIR}/${DISTNAME:S/-source//}

#PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 2.0.21

.include "options.mk"

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# none
CONFLICTS+=		${PYPKGPREFIX}-libanki-[0-9]* ${PYPKGPREFIXP}-anki-[0-9]*

REPLACE_PYTHON=		tools/runanki.system.in

USE_TOOLS+=	bash:run

REPLACE_BASH=		tools/tests.sh tools/build_ui.sh

SUBST_CLASSES+=		inst
SUBST_SED.inst+=	-e 's,/usr/share/anki,${PREFIX}/share/anki,'
SUBST_FILES.inst+=	anki/anki runanki
SUBST_STAGE.inst=	pre-build
SUBST_MESSAGE.inst=	Fixing installation path.

SUBST_CLASSES+=		lame
SUBST_SED.lame+=	-e 's,/usr/local,${PREFIX},'
SUBST_FILES.lame+=	anki/sound.py
SUBST_STAGE.lame=	pre-build
SUBST_MESSAGE.lame=	Fixing path to lame.

SUBST_CLASSES+=		man
SUBST_SED.man+=		-e 's,share/man/man1,${PKGMANDIR}/man1,'
SUBST_FILES.man+=	Makefile
SUBST_STAGE.man=	pre-build
SUBST_MESSAGE.man=	Fixing path to man page directory.

MAKE_FLAGS+=		PREFIX=${PREFIX} DESTDIR=${DESTDIR} MANDIR=${PKGMANDIR}

post-extract:
	${RM} -rf ${WRKSRC}/libanki/thirdparty

.include "../../lang/python/application.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
