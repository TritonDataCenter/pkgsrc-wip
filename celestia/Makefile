# $NetBSD$
#

.include "../../wip/celestia/Makefile.common"

COMMENT=	Free real-time 3D space simulator

USE_GMAKE=	YES

CONFIGURE_ARGS+=	--without-gtk
CONFIGURE_ARGS+=	--without-kde

.include "../../graphics/Mesa/buildlink2.mk"
.include "../../graphics/jpeg/buildlink2.mk"
.include "../../graphics/png/buildlink2.mk"

.include "../../mk/bsd.pkg.mk"
