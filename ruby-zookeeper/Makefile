# $NetBSD: Makefile,v 1.37 2013/03/02 20:33:24 wiz Exp $
#
DISTNAME= zookeeper-1.4.6 
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME}
PKGREVISION= 1
CATEGORIES=	ruby devel

MAINTAINER = thomas@freeagent.com
HOMEPAGE=	http://github.com/zk-ruby/zookeeper
COMMENT=	Low-level ruby extension for ZooKeeper
LICENSE=	mit

.include "../../lang/ruby/gem.mk"
.include "../../wip/zookeeper-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
