# $NetBSD: Makefile,v 1.2 2014/08/23 21:15:03 thomasklausner Exp $

DISTNAME=	tuxpaint-0.9.21
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.tuxpaint.org/
COMMENT=	Drawing program for small children
# program itself is gnu-gpl-v2, other licenses are packaged fonts
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1 AND public-domain AND modified-bsd

TOOL_DEPENDS+=	gperf-[0-9]*:../../devel/gperf

CVS_ROOT.tuxpaint=	:pserver:anonymous@tuxpaint.cvs.sourceforge.net:/cvsroot/tuxpaint
CVS_REPOSITORIES=	tuxpaint
WRKSRC=			${WRKDIR}/tuxpaint

USE_TOOLS+=		bash:run gmake msgfmt pkg-config
USE_PKGLOCALEDIR=	YES
MANCOMPRESSED=		YES

CONFLICTS+=		tuxpaint-stamps<2003.12.23

BROKEN_GETTEXT_DETECTION=	yes
REPLACE_BASH=		src/tuxpaint-import.sh

PKG_SYSCONFSUBDIR=	tuxpaint
MAKE_FLAGS+=		CONFDIR=${PKG_SYSCONFDIR}
MAKE_FLAGS+=		CP=${CP:Q}
MAKE_FLAGS+=		CFLAGS=${CFLAGS:Q}
MAKE_FLAGS+=		CPPFLAGS=${CPPFLAGS:Q}
MAKE_FLAGS+=		LDFLAGS=${LDFLAGS:Q}
MAKE_FLAGS+=		CHMOD=${CHMOD:Q}
MAKE_FLAGS+=		PREFIX=${PREFIX}
MAKE_FLAGS+=		MAN_PREFIX=${DESTDIR}${PREFIX}/${PKGMANDIR}/
MAKE_FLAGS+=		GPERF=${PREFIX}/bin/gperf
EGDIR=			${PREFIX}/share/examples/tuxpaint
CONF_FILES=		${EGDIR}/tuxpaint.conf ${PKG_SYSCONFDIR}/tuxpaint.conf

INSTALL_MAKE_FLAGS+=	PKG_ROOT=${DESTDIR}
INSTALL_MAKE_FLAGS+=	CONFDIR=${DESTDIR}${PREFIX}/share/examples/tuxpaint

.include "../../mk/bsd.fast.prefs.mk"

.if ${OPSYS} == "NetBSD"
CPPFLAGS+=		-DHAVE_STRCASESTR
.endif

# this uses iconv and png functions directly, so link against them
# explicitly.
MAKE_FLAGS+=		LIBS=${LIBS:M*:Q}
LIBS+=			-liconv
LIBS+=			-lpng
LIBS.SunOS+=		-lsocket -lnsl

post-install:
	${FIND} ${DESTDIR}${PREFIX}/share/doc/tuxpaint -name CVS -exec ${RM} -r {} \; 2>/dev/null || ${TRUE}
	${FIND} ${DESTDIR}${PREFIX}/share/doc/tuxpaint-dev -name CVS -exec ${RM} -r {} \; 2>/dev/null || ${TRUE}
	${FIND} ${DESTDIR}${PREFIX}/share/tuxpaint -name CVS -exec ${RM} -r {} \; 2>/dev/null || ${TRUE}
	${RM} -f ${DESTDIR}${PREFIX}/share/tuxpaint/fonts/locale/zh_tw_docs/maketuxfont.py
	${RM} -f ${DESTDIR}${PREFIX}/share/tuxpaint/fonts/locale/zh_tw_docs/tuxpaintsubset.pe

BUILDLINK_API_DEPENDS.SDL_mixer+=	SDL_mixer>=1.2.6
.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../converters/fribidi/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/SDL_Pango/buildlink3.mk"
BUILDLINK_API_DEPENDS.SDL_ttf+=	SDL_ttf>=2.0.7
.include "../../devel/SDL_ttf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
BUILDLINK_API_DEPENDS.SDL_image+=	SDL_image>=1.2.4
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../print/libpaper/buildlink3.mk"
.include "../../wip/mk/cvs-package.mk"
.include "../../mk/bsd.pkg.mk"
