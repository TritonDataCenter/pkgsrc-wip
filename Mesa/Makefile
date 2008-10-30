# $NetBSD: Makefile,v 1.69 2008/04/24 07:40:23 bjs Exp $

.include "../../wip/Mesa/Makefile.version"

DISTNAME=	# empty
PKGNAME=	Mesa-${MESA_VERSION}
CATEGORIES=	wip meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Graphics library meta package, similar to SGI's OpenGL

META_PACKAGE=	yes

CONFLICTS=	Mesa-glx-[0-9]*

DEPENDS+=	glut-${MESA_VERSION}{,nb[0-9]*}:../../wip/glut
DEPENDS+=	glu-${MESA_VERSION}{,nb[0-9]*}:../../wip/glu
DEPENDS+=	glw-${MESA_VERSION}{,nb[0-9]*}:../../wip/glw
DEPENDS+=	MesaLib-${MESA_VERSION}{,nb[0-9]*}:../../wip/glut

.include "../../mk/bsd.pkg.mk"
