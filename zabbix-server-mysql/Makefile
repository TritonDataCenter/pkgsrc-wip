# $NetBSD$

PKG_OPTIONS+=	zabbix-server
PKGNAME=	zabbix-server-mysql-${VER}

.include "../../wip/zabbix/Makefile.common"
.include "../../wip/zabbix/Makefile.server"

CONFIGURE_ARGS+=--disable-agent
CONFIGURE_ARGS+=--enable-server
CONFIGURE_ARGS+=--with-mysql

CONF_FILES+=	${EGDIR}/zabbix_server.conf ${PKG_SYSCONFDIR}/zabbix_server.conf

RCD_SCRIPTS=	zabbix_server

.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
