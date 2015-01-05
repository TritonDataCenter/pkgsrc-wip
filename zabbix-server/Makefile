# $NetBSD$

.include "../../wip/zabbix/Makefile.common"

PKGNAME=		zabbix-server-${VER}

CONFIGURE_ARGS+=	--disable-agent
CONFIGURE_ARGS+=	--enable-server

CONF_FILES+=	${EGDIR}/zabbix_server.conf ${PKG_SYSCONFDIR}/zabbix_server.conf

RCD_SCRIPTS=	zabbix_server

.include "../../mk/bsd.pkg.mk"
