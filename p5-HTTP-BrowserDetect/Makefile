# $NetBSD: Makefile,v 1.5 2013/04/19 04:39:17 jgoamakf Exp $

DISTNAME=		HTTP-BrowserDetect-3.31
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=HTTP/}

MAINTAINER=		hiramatu@boreas.dti.ne.jp
HOMEPAGE=		https://metacpan.org/release/HTTP-BrowserDetect
COMMENT=		Detect browser, version, OS from UserAgent
LICENSE=		${PERL5_LICENSE}

DEPENDS+=		p5-File-Slurp-[0-9]*:../../devel/p5-File-Slurp
DEPENDS+=		p5-Path-Tiny-[0-9]*:../../filesystems/p5-Path-Tiny
DEPENDS+=		p5-Hash-Merge-[0-9]*:../../devel/p5-Hash-Merge

TOOL_DEPENDS+=		p5-Test-Most-[0-9]*:../../devel/p5-Test-Most
TOOL_DEPENDS+=		p5-Test-NoWarnings-[0-9]*:../../devel/p5-Test-NoWarnings
TOOL_DEPENDS+=		p5-Test-FailWarnings-[0-9]*:../../devel/p5-Test-FailWarnings

PERL5_PACKLIST=		auto/HTTP/BrowserDetect/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
