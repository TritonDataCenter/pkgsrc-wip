# $NetBSD$
#

.include "../../wip/nagios-plugins/Makefile.common"

PKGNAME=	nagios-plugin-mysql-${PLUGINSVERSION}
PKGREVISION=	# not defined

MAINTAINER=     murray@river-styx.org
COMMENT=	Nagios mysql plugin

BINARY_TARGET=	utils.o check_mysql

CONFIGURE_ARGS+=	--with-mysql=${BUILDLINK_PREFIX.mysql-client}
LDFLAGS+=		-Wl,-R${LOCALBASE}/lib/mysql

.include "../../wip/nagios-plugins/Makefile.plugin"

.include "../../databases/mysql-client/buildlink2.mk"
.include "../../security/openssl/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
