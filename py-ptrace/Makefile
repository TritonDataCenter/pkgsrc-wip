# $NetBSD: Makefile,v 1.12 2014/01/25 10:38:22 thomasklausner Exp $

DISTNAME=	python-ptrace-0.6.4
PKGNAME=	${PYPKGPREFIX}${DISTNAME:S/python//}
PKGREVISION=	3
CATEGORIES=	sysutils python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/python-ptrace/}

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	https://bitbucket.org/haypo/python-ptrace/wiki/Home
COMMENT=	Python binding of ptrace
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM=	FreeBSD-*-x86_64  FreeBSD-*-i386 Linux-*-*

post-extract:
	${MV} ${WRKSRC}/strace.py ${WRKSRC}/strace.py${PYVERSSUFFIX}
	${MV} ${WRKSRC}/gdb.py ${WRKSRC}/gdb.py${PYVERSSUFFIX}

.include "../../wip/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
