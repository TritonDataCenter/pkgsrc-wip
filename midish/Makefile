# $NetBSD$

DISTNAME=	midish-1.3.3
CATEGORIES=	audio
MASTER_SITES=	https://midish.org/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://midish.org/
COMMENT=	Open-source MIDI sequencer/filter
LICENSE=	isc

HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--mandir=${PREFIX}/${PKGMANDIR}

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "OpenBSD"
CONFIGURE_ARGS+=	--enable-sndio
.elif ${OPSYS} == "Linux"
.  include "../../audio/alsa-lib/buildlink3.mk"
CONFIGURE_ARGS+=        --enable-alsa
.endif

EGDIR=		${PREFIX}/share/examples/${PKGBASE}
CONF_FILES+=	${EGDIR}/midishrc \
		${PKG_SYSCONFDIR}/midishrc

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	pre-configure
SUBST_FILES.conf=	manual.html mdep.c midish.1
SUBST_VARS.conf=	PKG_SYSCONFDIR
SUBST_SED.conf+=	-e "s:/etc/midishrc:${PKG_SYSCONFDIR}/midishrc:g"
SUBST_MESSAGE.conf=	Setting configuration file path.

MAKE_FLAGS+=	CC=${CC:Q}		\
		CFLAGS=${CFLAGS:Q}	\
		LDFLAGS=${LDFLAGS:Q}	\
		LIB=${LIBS:Q}

.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
