# $NetBSD$

DISTNAME=	gkrellm-volume-2.1.8
WRKSRC=		${WRKDIR}/gkrellm-volume
CATEGORIES=	audio
MASTER_SITES=	http://gkrellm.luon.net/files/

MAINTAINER=	cube@cubidou.net
HOMEPAGE=	http://gkrellm.luon.net/volume.phtml
COMMENT=	gkrellm2 volume mixer plugin

BUILD_USES_MSGFMT=	YES

USE_BUILDLINK2=		YES
USE_GMAKE=		YES
USE_PKGLOCALEDIR=	YES

MAKE_ENV+=	LOCALEDIR=${PREFIX}/${PKGLOCALEDIR}/locale \
		enable_nls=1

.include "../../wip/gkrellm2/buildlink2.mk"
.include "../../x11/gtk2/buildlink2.mk"
.include "../../mk/ossaudio.buildlink2.mk"

.include "../../mk/bsd.pkg.mk"
