# $NetBSD$

DISTNAME=	dnsruby-1.37
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
CATEGORIES=	net

MAINTAINER=	pettai@nordu.net
HOMEPAGE=	http://dnsruby.rubyforge.org/
COMMENT=	Ruby DNS client library

NO_BUILD=	yes

RCV=		1.37
WRKSRC=		${WRKDIR}/dnsruby-${RCV}

post-configure:
	cp ${WRKDIR}/dnsruby-${RCV}.gemspec ${WRKSRC}/

#.include "../../lang/ruby/modules.mk"
.include "../../misc/rubygems/rubygem.mk"
.include "../../mk/bsd.pkg.mk"
