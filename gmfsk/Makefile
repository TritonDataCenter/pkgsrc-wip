# $NetBSD$

DISTNAME=	gmfsk-0.6beta2
CATEGORIES=	ham
MASTER_SITES=	http://he.fi/pub/ham/unix/linux/hfmodems/

MAINTAINER=	oherrala@ee.oulu.fi
HOMEPAGE=	http://gmfsk.connect.fi/
COMMENT=	gMFSK is a multimode HF terminal program for radio amateurs

PKG_INSTALLATION_TYPES= overwrite pkgviews

USE_BUILDLINK2=		YES
GNU_CONFIGURE=		YES

.include "../../devel/libgnomeui/buildlink2.mk"
.include "../../math/fftw2/buildlink2.mk"
.include "../../textproc/scrollkeeper/buildlink2.mk"
.include "../../x11/gtk2/buildlink2.mk"

.include "../../mk/bsd.pkg.mk"
