# $NetBSD$
#

LICENSE=		gnu-gpl-v2 AND gnu-lgpl-v2

LIBGDA_PROVIDER=	ldap

.include "../../databases/libgda/Makefile.common"

CONFIGURE_ARGS+=	--with-ldap=${PREFIX}

.include "../../databases/openldap-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
