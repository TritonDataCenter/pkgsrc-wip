# $NetBSD: Makefile,v 1.3 2013/12/15 04:12:49 makoto Exp $

DISTNAME=	hasida-table-0.8
PKGREVISION=	2
CATEGORIES=	inputmethod
MASTER_SITES=	http://www.ki.nu/pub/

MAINTAINER=	makoto@ki.nu
HOMEPAGE=	http://www.ki.nu/~makoto/tcode/
COMMENT=	Kanji table for t-code input (PostScript and PDF)
LICENSE=	2-clause-bsd

USE_TOOLS+=	perl
REPLACE_PERL=	hasida-table
# TOOL_DEPENDS+=	ghostscript-cidfonts-ryumin-[0-9]*:../../fonts/ghostscript-cidfonts-ryumin
# BUILD_ENV+=	PKG_OPTIONS.ghostscript+=disable-compile-inits

# .if empty(PKG_BUILD_OPTIONS.ghostscript-gpl:Mdisable-compile-inits) && \
#     empty(PKG_BUILD_OPTIONS.ghostscript-agpl:Mdisable-compile-inits)
# PKG_FAIL_REASON+=       'You need to set PKG_OPTIONS.ghostscript+= disable-compile-inits, at its compile time.'
# .endif

# DEPENDS either ghostscript-agpl or ghostscript-gpl
.include "../../print/ghostscript/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
