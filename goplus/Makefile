# $NetBSD: Makefile,v 1.3 2023/04/19 13:22:32 nikita Exp $

DISTNAME=	goplus-1.1.3
MASTER_SITES=	${MASTER_SITE_GITHUB:=goplus/}
CATEGORIES=	lang
GITHUB_TAG=	v${PKGVERSION_NOREV}
GITHUB_PROJECT=	gop

MAINTAINER=	nikita@NetBSD.org
HOMEPAGE=	https://goplus.org/
COMMENT=	The Go+ programming language
LICENSE=	apache-2.0

USE_TOOLS+=	bash:run
# https://github.com/goplus/gop/issues/1350
GO_VERSION_DEFAULT=	119

# cgo compiles under TMPDIR
.include "../../mk/bsd.prefs.mk"
TMPDIR?=	/tmp
BUILDLINK_PASSTHRU_DIRS+= ${TMPDIR}

INSTALLATION_DIRS=	bin

REPLACE_BASH+=	all.bash
REPLACE_BASH+=	make.bash

.include "go-modules.mk"

GO_DIST_BASE=	${GITHUB_PROJECT}-${PKGVERSION_NOREV}
GO_SRCPATH=	github.com/goplus/gop

#do-install:
#.for cmd in gop gopdecl gopfmt goptestgo
#	${INSTALL} ${WRKDIR}/.gopath/bin/${cmd} ${DESTDIR}${PREFIX}/bin/${cmd}
#.endfor
#	${MKDIR} ${DESTDIR}${PREFIX}/gopkg

.include "../../lang/go/go-package.mk"
.include "../../wip/go-qiniu-x/buildlink3.mk"
#.include "../../wip/go-goplus-c2go/buildlink3.mk"
#.include "../../wip/go-goplus-gox/buildlink3.mk"
#.include "../../wip/go-goplus-libc/buildlink3.mk"
#.include "../../wip/go-goplus-mod/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
