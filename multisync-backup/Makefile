# $NetBSD: Makefile,v 1.8 2010/06/13 22:47:11 thomasklausner Exp $
#

PKGNAME=		multisync-backup-0.82
PKGREVISION=		3

COMMENT=		Module for Multisync to backup your PIM data
LICENSE=		gnu-gpl-v2

WRKSRC=			${WRKDIR}/multisync-0.82/plugins/backup_plugin/

DEPENDS+=		multisync>=0.82:../../wip/multisync
TOOL_DEPENDS+=		libtool-base>=1.5.10:../../devel/libtool-base
USE_TOOLS+=		aclocal autoconf autoheader automake

pre-configure:
	cd ${WRKSRC}/../.. && \
		aclocal && \
		autoheader && \
		autoconf && \
		automake -acf
	cd ${WRKSRC} && \
		aclocal && \
		${PREFIX}/bin/libtoolize --force --copy && \
		autoheader && \
		autoconf && \
		automake -acf
	cd ${WRKSRC}/../.. && \
		./configure ${CONFIGURE_ENV} ${CONFIGURE_ARGS}

do-install:
	cd ${WRKSRC} && \
		${MAKE} install

.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../wip/multisync/Makefile.common"
