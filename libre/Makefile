# $NetBSD: Makefile,v 1.8 2015/03/15 14:37:03 othyro Exp $

DISTNAME=	re-2.6.0
PKGNAME=	lib${DISTNAME}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=baresip/}
GITHUB_PROJECT=	re
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/baresip/re
COMMENT=	Portable library for real-time communications with async IO support
LICENSE=	modified-bsd

USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake
NO_CONFIGURE=	yes

SUBST_CLASSES+=		prefix
SUBST_FILES.prefix=	Makefile
SUBST_MESSAGE.prefix=	Fixing PREFIX path.
SUBST_SED.prefix=	-e "s|/usr/local|${PREFIX}|1"
SUBST_SED.prefix+=	-e "s|/usr|${PREFIX}|1"
SUBST_SED.prefix+=	-e "s|} -lre|} ${COMPILER_RPATH_FLAG}"'$$$$'"{libdir} -lre|"
SUBST_STAGE.prefix=	pre-build

SUBST_CLASSES+=		re
SUBST_FILES.re=		mk/re.mk
SUBST_MESSAGE.re=	Fixing PREFIX path.
SUBST_SED.re=		-e "s|/usr/local|${PREFIX}|g"
SUBST_STAGE.re=		pre-build

MAKE_FLAGS+=		EXTRA_LFLAGS="${BUILDLINK_LDADD.libexecinfo}"

post-install:
	${CHMOD} -x ${DESTDIR}${PREFIX}/lib/libre.a

.include "../../devel/libexecinfo/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
