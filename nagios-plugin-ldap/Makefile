# $NetBSD$
#

.include "../../net/nagios-plugins/Makefile.common"

PKGNAME=	nagios-plugin-ldap

MAINTAINER=     murray@river-styx.org
COMMENT=	Nagios ldap plugin

BINARY_TARGET=	check_ldap

.include "../../net/nagios-plugins/Makefile.plugin"

.include "../../databases/openldap/buildlink2.mk"
.include "../../security/openssl/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
