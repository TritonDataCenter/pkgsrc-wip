# $NetBSD$

DISTNAME=	ast-grep-0.16.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ast-grep/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ast-grep.github.io/
COMMENT=	CLI tool for code structural search, lint, and rewriting
LICENSE=	mit

.include "cargo-depends.mk"

USE_LANGUAGES=	c c++

INSTALLATION_DIRS+=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/sg ${DESTDIR}${PREFIX}/bin

.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"
