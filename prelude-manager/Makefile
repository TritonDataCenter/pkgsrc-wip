# $NetBSD$

.include "Makefile.common"

COMMENT=	Prelude manager

CONFLICTS+=     prelude-mysql-manager-[0-9]*
CONFLICTS+=     prelude-pgsql-manager-[0-9]*

CONFIGURE_ARGS+=        --disable-mysql
CONFIGURE_ARGS+=        --disable-pgsql

PLIST_SRC=      PLIST
PLIST_SRC+=     PLIST.base

.include "../../mk/bsd.pkg.mk"
