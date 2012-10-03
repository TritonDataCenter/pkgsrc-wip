# $NetBSD$
#

LICENSE=		gnu-gpl-v2 AND gnu-lgpl-v2

CONFLICTS=		libgda-[0-9]*	# till PR pkg/45845 applied.

LIBGDA_PROVIDER=	sqlite

.include "../../databases/libgda/Makefile.common"
PKGNAME=		${DISTNAME:S/libgda-/libgda-${LIBGDA_PROVIDER}3-/}

CONFIGURE_ARGS+=	--with-sqlite=${PREFIX}

INSTALLATION_DIRS+=	share/gtk-doc/html/libgda-3.0

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/C/html/limitations_sqlite.html ${DESTDIR}${PREFIX}/share/gtk-doc/html/libgda-3.0

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
