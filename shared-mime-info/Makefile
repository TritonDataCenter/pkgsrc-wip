# $NetBSD$
#

DISTNAME=		shared-mime-info-0.13
CATEGORIES=		databases
MASTER_SITES=   	http://www.freedesktop.org/software/shared-mime-info/

MAINTAINER=		aniou@smutek.pl
HOMEPAGE=		http://www.freedesktop.org/software/shared-mime-info/
COMMENT=		Large number of common MIME types

USE_BUILDLINK3=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pkgconfig/buildlink3.mk"
.include "../../textproc/intltool/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
