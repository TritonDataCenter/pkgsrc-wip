# $NetBSD: Makefile,v 1.9 2003/09/27 13:25:39 jdolecek Exp $

MODNAME=		mssql
CATEGORIES+=		databases
COMMENT=		PHP4 extension for MS SQL databases

.include "../../www/php4/Makefile.module"

USE_BUILDLINK2=		# defined

CONFIGURE_ARGS+=	--with-${MODNAME}=shared,${BUILDLINK_PREFIX.freetds}/freetds

.include "../../databases/freetds/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
