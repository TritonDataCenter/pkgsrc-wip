# $NetBSD$
#

DISTNAME=		ortp-0.7.1
CATEGORIES=		net
MASTER_SITES=		http://www.linphone.org/ortp/sources/

MAINTAINER=		zul@netbsd-fr.org
HOMEPAGE=		http://www.linphone.org/ortp/
COMMENT=	"A Real-time Transport Protocol stack"

GNU_CONFIGURE=		yes

.include "options.mk"

.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
