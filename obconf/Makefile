# $NetBSD$

DISTNAME=		obconf-1.0
CATEGORIES=		x11 wm
MASTER_SITES=		http://icculus.org/openbox/releases/

MAINTAINER=		snj@pobox.com
HOMEPAGE=		http://www.openbox.org/
COMMENT=		Tool for configuring the Openbox window manager

USE_BUILDLINK2=		YES
GNU_CONFIGURE=		YES

.include "../../devel/libglade2/buildlink2.mk"
.include "../../wip/openbox3/buildlink2.mk"
.include "../../x11/gtk2/buildlink2.mk"
.include "../../mk/bsd.pkg.mk"
