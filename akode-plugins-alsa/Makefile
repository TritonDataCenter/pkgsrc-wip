# $NetBSD: Makefile,v 1.3 2008/12/05 14:03:53 htepper Exp $
#

PKGNAME=		akode-plugins-alsa-${AKODE_VERSION}

MAINTAINER=		hasso@NetBSD.org
COMMENT=		Alsa output plugin for aKode framework

.include "../../wip/akode/Makefile.common"

DISTINFO_FILE=          ${.CURDIR}/../../wip/akode/distinfo
PATCHDIR=               ${.CURDIR}/../../wip/akode/patches

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+=	--with-alsa

do-install:
	cd ${WRKSRC}/akode/plugins/alsa_sink && ${SETENV} ${MAKE_ENV} ${MAKE} \
		prefix=${DESTDIR}${PREFIX} install

.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../wip/akode/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
