# $NetBSD: Makefile,v 1.3 2008/12/05 14:03:53 htepper Exp $
#

PKGNAME=		akode-plugins-oss-${AKODE_VERSION}

MAINTAINER=		hasso@NetBSD.org
COMMENT=		OSS output plugin for akode framework

.include "../../wip/akode/Makefile.common"

DISTINFO_FILE=          ${.CURDIR}/../../wip/akode/distinfo
PATCHDIR=               ${.CURDIR}/../../wip/akode/patches

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+=	--with-oss

do-install:
	cd ${WRKSRC}/akode/plugins/oss_sink && ${SETENV} ${MAKE_ENV} ${MAKE} \
		prefix=${DESTDIR}${PREFIX} install

.include "../../devel/libltdl/buildlink3.mk"
.include "../../wip/akode/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
