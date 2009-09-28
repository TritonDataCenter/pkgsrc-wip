# $NetBSD$

DISTNAME=	dnsruby-1.37
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
CATEGORIES=	net

MAINTAINER=	pettai@nordu.net
HOMEPAGE=	http://dnsruby.rubyforge.org/
COMMENT=	Ruby DNS client library

PKG_DESTDIR_SUPPORT=	user-destdir

NO_BUILD=	yes
GEM_BUILD=      gemspec

post-patch:
	cd ${DISTDIR} && ${CP} ${DISTFILES} ${WRKSRC}

.include "../../misc/rubygems/rubygem.mk"
.include "../../mk/bsd.pkg.mk"
