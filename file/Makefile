# $NetBSD$

DISTNAME=		file-3.41
CATEGORIES=		sysutils
MASTER_SITES=		ftp://ftp.gw.com/mirrors/pub/unix/file/
MASTER_SITES+=		ftp://ftp.astron.com/pub/file/

MAINTAINER=		packages@netbsd.org
#HOMEPAGE=
COMMENT=		tool for determining file type

USE_GMAKE=		YES
GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--enable-fsect-man5 --datadir=${PREFIX}/share/misc

.include "../../mk/bsd.pkg.mk"
