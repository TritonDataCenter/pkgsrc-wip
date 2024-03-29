# $NetBSD$

PKGNAME=	hercules4aethra-4.6.0.20230618
DISTNAME=	hercules4aethra
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_GITHUB:=Hercules-Aethra/}
EXTRACT_USING=	bsdtar

MAINTAINER=	rhialto@NetBSD.org
HOMEPAGE=	https://github.com/Hercules-Aethra/aethra
COMMENT=	The Aethra version of Hercules 4.x (Hyperion)
LICENSE=	qpl-v1.0

GITHUB_PROJECT=	aethra
GITHUB_TAG=	a3e9574c46aa397fc5f21959b724def4c5a6dc62

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf automake flex gawk grep gm4 gmake perl gsed
USE_TOOLS+=	bash
USE_LIBTOOL=	YES
USE_LANGUAGES+=	c
PTHREAD_OPTS+=	require
REPLACE_BASH=	_dynamic_version
.if ${MACHINE_ARCH} == i386
CFLAGS+=	-march=i586
.endif

SUBST_CLASSES+=		prefix
SUBST_STAGE.prefix=	pre-configure
SUBST_MESSAGE.prefix=	Correcting configuration path
SUBST_FILES.prefix=	hercules.cnf
SUBST_SED.prefix=	-e 's,/usr/local,${PREFIX},g'

CONFIGURE_ARGS+=	--enable-extpkgs=${PREFIX}/lib/hercules4sdl

GROUP=			hercules
PKG_GROUPS+=		${GROUP}
SPECIAL_PERMS+=		${PREFIX}/bin/hercifc ${REAL_ROOT_USER} ${GROUP} 4510
INSTALLATION_DIRS+=	share/examples/hercules

pre-configure:
	cd ${WRKSRC} && ./autogen.sh

post-install:
	${INSTALL_DATA} ${WRKSRC}/hercules.cnf ${DESTDIR}${PREFIX}/share/examples/hercules/

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../math/hercules4sdl-decnumber/buildlink3.mk"
.include "../../math/hercules4sdl-softfloat/buildlink3.mk"
.include "../../net/hercules4sdl-telnet/buildlink3.mk"
.include "../../security/hercules4sdl-crypto/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
