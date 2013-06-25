# $NetBSD$
#

LIBGDA_PROVIDER=	mdb

.include "../../databases/libgda/Makefile.common"

PKGREVISION=		1
CONFIGURE_ARGS+=	--with-mdb=${PREFIX}
CFLAGS+=		-DMDB_WITH_WRITE_SUPPORT

pre-build:
	${LN} -s ${WRKDIR}/.buildlink/lib/libmdb.0 ${WRKDIR}/.buildlink/lib/libmdb		# XXX
	${LN} -s ${WRKDIR}/.buildlink/lib/libmdbsql.0 ${WRKDIR}/.buildlink/lib/libmdbsql	# XXX

.include "../../wip/mdbtools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
