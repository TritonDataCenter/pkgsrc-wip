# $NetBSD: Makefile,v 1.3 2005/10/23 20:16:52 jlam Exp $

PKGNAME=	postgresql81-plperl-${BASE_VERS}
COMMENT=	PL/Perl procedural language for the PostgreSQL backend

DEPENDS+=	postgresql81-server>=${BASE_VERS}:../../wip/postgresql81-server

.include "../../wip/postgresql81/Makefile.common"

PERL5_CONFIGURE=	NO
CONFIGURE_ARGS+=	--with-perl

BUILD_DIRS=		${WRKSRC}/src/pl/plperl
MAKEFILE=		GNUmakefile

USE_LIBTOOL=		yes
PKG_LIBTOOL=		${PKG_SHLIBTOOL}

.include "../../wip/postgresql81-client/buildlink3.mk"
.include "../../lang/perl5/module.mk"

.include "../../mk/bsd.pkg.mk"
