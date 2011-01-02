# $NetBSD: Makefile,v 1.11 2010/05/28 11:06:34 obache Exp $

CANNA_MODULE=	canuum

.include "../../wip/canna/Makefile.common"

MAINTAINER=		pkgsrc-users@NetBSD.org

PKG_DESTDIR_SUPPORT=	user-destdir

INSTALLATION_DIRS=	${PKGMANDIR}/ja_JP.EUC/man1

CONFIGURE_DIRS=	. canuum
BUILD_DIRS=	canuum

INSTALL_MAKE_FLAGS+=	INSTUGIDFLAGS=

SPECIAL_PERMS+=	bin/canuum ${SETUID_ROOT_PERMS}

.include "../../wip/canna-lib/buildlink3.mk"

pre-configure:
	${CP} ${PKGSRCDIR}/mk/gnu-config/config.guess ${WRKSRC}/canuum
	${CP} ${PKGSRCDIR}/mk/gnu-config/config.sub ${WRKSRC}/canuum
	${LN} -fs ${WRKSRC}/cannaconf.h ${WRKSRC}/canuum
	${LN} -fs ${WRKSRC}/canna/ccompat.h ${WRKSRC}/canuum

.include "../../wip/libspt/buildlink3.mk"
.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
