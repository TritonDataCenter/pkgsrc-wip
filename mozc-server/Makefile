# $NetBSD$
#

DISTNAME=	mozc-1.6.1187.102
PKGNAME=	${DISTNAME:S/mozc-/mozc-server-/}

INSTALLATION_DIRS+=	libexec

do-build:
	cd ${WRKSRC} && env ${MAKE_ENV} \
		${PYTHONBIN} build_mozc.py build -c Release -j ${MAKE_JOBS} \
			server/server.gyp:mozc_server

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out_${OSDEST}/Release/mozc_server \
		${DESTDIR}${PREFIX}/libexec/mozc_server_japanese

.include "../../wip/ibus-mozc/Makefile.common"
