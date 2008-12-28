# $NetBSD$

.include "../../wip/lua-stdlib/Makefile.common"

PKGNAME=		${DISTNAME:S/stdlib/lua-stdlib-doc/}

COMMENT=		Documentation for modules from lua-stdlib

DEPENDS+=		lua-stdlib:../../wip/lua-stdlib

DOCDIR=			share/doc/lua-stdlib

INSTALLATION_DIRS+=	${DOCDIR}

do-install:
	${INSTALL_DATA} ${WRKSRC}/modules/*.html \
	                ${DESTDIR}${PREFIX}/${DOCDIR}

.include "../../mk/bsd.pkg.mk"
