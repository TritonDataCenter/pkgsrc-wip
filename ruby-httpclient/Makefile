# $NetBSD$
#

DISTNAME=	httpclient-2.1.6.1
CATEGORIES=	www
MASTER_SITES=	http://dev.ctor.org/download/ \
		http://dev.ctor.org/download/archive/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	https://github.com/nahi/httpclient
COMMENT=	HTTP accessing library for Ruby
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none

USE_RUBY_INSTALL=	yes
NO_BUILD=		yes

INSTALLATION_DIRS=	${RUBY_VENDORLIB}

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
