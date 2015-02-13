# $NetBSD$

PKGNAME=	zabbix-frontend-${VER}

.include "../../wip/zabbix/Makefile.common"

CONFIGURE_ARGS+=--disable-agent
CONFIGURE_ARGS+=--disable-server
CONFIGURE_ARGS+=--disable-proxy

do-install:
	cd ${WRKSRC}; pax -rw frontends \
		${DESTDIR}${PREFIX}/share/zabbix/

.include "../../mk/bsd.pkg.mk"
