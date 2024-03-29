# $NetBSD: Makefile,v 1.8 2019/04/26 13:13:46 maya Exp $

DISTNAME=	carbon-1.1.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	databases
GITHUB_PROJECT=	carbon
MASTER_SITES=	${MASTER_SITE_GITHUB:=graphite-project/}

MAINTAINER=	riz@NetBSD.org
HOMEPAGE=	https://launchpad.net/graphite
COMMENT=	Backend storage application for graphite
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-twisted-[0-9]*:../../net/py-twisted
DEPENDS+=	${PYPKGPREFIX}-whisper>=${PKGVERSION_NOREV}:../../databases/py-whisper

USE_LANGUAGES=	# none

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

BUILD_DEFS+=	VARBASE GRAPHITE_USER GRAPHITE_GROUP GRAPHITE_DIR

RCD_SCRIPTS=		carbon-aggregator carbon-cache carbon-relay
FILES_SUBST+=		GRAPHITE_USER=${GRAPHITE_USER} GRAPHITE_GROUP=${GRAPHITE_GROUP} \
			GRAPHITE_DIR=${GRAPHITE_DIR}

OWN_DIRS_PERMS+=	${GRAPHITE_DIR} ${WWW_USER} ${GRAPHITE_GROUP} 0775
OWN_DIRS_PERMS+=	${GRAPHITE_DIR}/lists ${GRAPHITE_USER} ${GRAPHITE_GROUP} 0755
OWN_DIRS_PERMS+=	${GRAPHITE_DIR}/rrd ${GRAPHITE_USER} ${GRAPHITE_GROUP} 0755
OWN_DIRS_PERMS+=	${GRAPHITE_DIR}/whisper ${GRAPHITE_USER} ${GRAPHITE_GROUP} 0755
OWN_DIRS_PERMS+=	${GRAPHITE_LOG_DIR} ${GRAPHITE_USER} ${GRAPHITE_GROUP} 0755
OWN_DIRS_PERMS+=	${VARBASE}/run/graphite ${GRAPHITE_USER} ${GRAPHITE_GROUP} 0755


SUBST_CLASSES+=		dirs
SUBST_STAGE.dirs=	pre-configure
SUBST_MESSAGE.dirs=	Patching default storage directory
SUBST_FILES.dirs=	setup.py conf/*
SUBST_VARS.dirs=	GRAPHITE_DIR GRAPHITE_EGDIR GRAPHITE_USER PREFIX \
			PKG_SYSCONFDIR VARBASE

# NetBSD has posix_fallocate in libc, but fs can't actually use it.
SUBST_CLASSES.NetBSD+=		fallocate
SUBST_STAGE.fallocate=		pre-configure
SUBST_MESSAGE.fallocate=	Patching for NetBSD defaults
SUBST_FILES.fallocate=		conf/carbon.conf.example
SUBST_SED.fallocate=		-e 's,^\(WHISPER_FALLOCATE_CREATE *= *\)\(.*\),\1False,'

PKG_SYSCONFSUBDIR=	graphite

GRAPHITE_CONF_FILES=	aggregation-rules.conf			\
			blacklist.conf				\
			carbon.amqp.conf			\
			carbon.conf				\
			relay-rules.conf			\
			rewrite-rules.conf			\
			storage-aggregation.conf		\
			storage-schemas.conf			\
			whitelist.conf

.for file in ${GRAPHITE_CONF_FILES}
CONF_FILES+=		${GRAPHITE_EGDIR}/${file}.example \
			${PKG_SYSCONFDIR}/${file}
.endfor

PYSETUPINSTALLARGS=	--prefix=${PREFIX} \
			--install-lib=${PREFIX}/${PYSITELIB}

INSTALLATION_DIRS+=	share/examples/graphite

.include "../../wip/py-carbon/Makefile.common"
.include "../../wip/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
