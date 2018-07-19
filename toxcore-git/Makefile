# $NetBSD$

DISTNAME=	toxcore-0.2.4
CATEGORIES=	chat
MASTER_SITES=   ${MASTER_SITE_GITHUB:=TokTok/}
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_PROJECT=	c-toxcore

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://tox.chat/
COMMENT=	Tox protocol library
LICENSE=	gnu-gpl-v3

USE_CMAKE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS=	pkg-config
TEST_TARGET=	test

.include "../../audio/libopus/buildlink3.mk"
.include "../../devel/libconfig/buildlink3.mk"
.include "../../multimedia/libvpx/buildlink3.mk"
.include "../../security/libsodium/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
