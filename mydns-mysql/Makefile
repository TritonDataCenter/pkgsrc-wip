# $NetBSD$

PKGNAME=	${DISTNAME:S/-/-mysql-/}
COMMENT=	MySQL-based DNS server

CONFLICTS=	mydns-pgsql-[0-9]*

DISTINFO_FILE=	${.CURDIR}/../mydns-pgsql/distinfo
PATCHDIR=	${.CURDIR}/../mydns-pgsql/patches
FILESDIR=	${.CURDIR}/../mydns-pgsql/files

CONFIGURE_ARGS+=	--without-pgsql
CONFIGURE_ARGS+=	--with-mysql-lib=${PREFIX}/lib/mysql
CONFIGURE_ARGS+=	--with-mysql-include=${PREFIX}/include/mysql

.include	"../../mk/mysql.buildlink3.mk"
.include	"../mydns-pgsql/Makefile.common"
