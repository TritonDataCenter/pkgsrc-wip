# $NetBSD$
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.libgda-odbc
PKG_OPTIONS_REQUIRED_GROUPS=	db
PKG_OPTIONS_GROUP.db=	iodbc unixodbc
PKG_SUGGESTED_OPTIONS=	unixodbc

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Miodbc)
.include "../../databases/iodbc/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Munixodbc)
.include "../../databases/unixodbc/buildlink3.mk"
.endif
