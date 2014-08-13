# $NetBSD$
#

RSYSLOG_MOD=	snmp
PKGNAME=	${DISTNAME:S/rsyslog/rsyslog-${RSYSLOG_MOD}/}

DEPENDS+=	rsyslog>=${PKGVERSION_NOREV}:../../wip/rsyslog8

.include "../../wip/rsyslog8/Makefile.common"

CONFIGURE_ARGS+=	--enable-snmp

BUILD_DIRS=		plugins/mmsnmptrapd plugins/omsnmp

.include "../../net/net-snmp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
