# $NetBSD$
#

DISTNAME=		bashdb-4.2-0.8
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bashdb/}

MAINTAINER=		splitscreen@users.sourceforge.net
HOMEPAGE=		http://bashdb.sourceforge.net
COMMENT=		The Bash debugger project
LICENSE=		gnu-gpl-v2

DEPENDS+=		bash-[0-9]*:../../shells/bash

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

USE_LANGUAGES=		c c++

INFO_FILES=		yes
TEST_TARGET=		check

.include "../../mk/bsd.pkg.mk"
