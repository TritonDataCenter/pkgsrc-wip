# $NetBSD$
#
###########################################################
#                  Generated by fbsd2pkg                  #
#              Tue Sep 28 11:27:06 CDT 2021               #
###########################################################

DISTNAME=	lpjs-0.0.0.153
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=outpaddling/}
GITHUB_PROJECT=	LPJS
GITHUB_TAG=	0828377eecab80bbe812a4719d7b8a083b9327b0

OWNER=		bacon@NetBSD.org
HOMEPAGE=	https://github.com/outpaddling/LPJS/
COMMENT=	Lightweight, Portable Job Scheduler
LICENSE=	2-clause-bsd

LDFLAGS.SunOS=	-lresolv -lsocket -lnsl

EGDIR=		${PREFIX}/share/examples/lpjs
OWN_DIRS=	${PKG_SYSCONFDIR}/lpjs
CONF_FILES=	${EGDIR}/config.sample ${PKG_SYSCONFDIR}/lpjs/config

RCD_SCRIPTS+=		lpjs_dispatchd lpjs_compd

INSTALLATION_DIRS=	share/examples/lpjs

pre-build:
	cd ${WRKSRC} && ${MAKE} depend PREFIX=${PREFIX}

post-install:
	${MV} ${DESTDIR}${PREFIX}/etc/lpjs/config.sample ${DESTDIR}${EGDIR}

.include "../../wip/libxtend/buildlink3.mk"
.include "../../security/munge/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
