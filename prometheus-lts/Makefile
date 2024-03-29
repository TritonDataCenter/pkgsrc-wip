# $NetBSD: Makefile,v 1.75 2022/11/02 19:39:52 bsiegert Exp $

DISTNAME=	prometheus-2.45.0
PKGNAME=	${DISTNAME:S/prometheus/prometheus-lts/}
# XXX: We need to mix tag and release, not supported via mk/fetch/github.mk.
MASTER_SITES=	-https://github.com/prometheus/prometheus/archive/refs/tags/v2.45.0.tar.gz
CATEGORIES=	databases

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://prometheus.io/
COMMENT=	The Prometheus monitoring system and time series database
LICENSE=	apache-2.0

.include "go-modules.mk"

PROMETHEUS_WEB_UI=		prometheus-web-ui-2.45.0.tar.gz
SITES.${PROMETHEUS_WEB_UI}=	https://github.com/prometheus/prometheus/releases/download/v2.45.0/
DISTFILES=			${DEFAULT_DISTFILES} ${PROMETHEUS_WEB_UI}

GO_DIST_BASE=	${DISTNAME}
GO_SRCPATH=	github.com/prometheus/prometheus

GO_BUILD_DATE_cmd=	${DATE} "+%Y-%m-%d"
GO_XFLAG_PREFIX=	-X github.com/prometheus/common/version

GO_LDFLAGS=	-s
GO_LDFLAGS+=	${GO_XFLAG_PREFIX}.Branch=release-${PKGVERSION_NOREV:R}
GO_LDFLAGS+=	${GO_XFLAG_PREFIX}.BuildDate=${GO_BUILD_DATE_cmd:sh}
GO_LDFLAGS+=	${GO_XFLAG_PREFIX}.BuildUser=pkgsrc
GO_LDFLAGS+=	${GO_XFLAG_PREFIX}.Revision=${GITHUB_TAG}
GO_LDFLAGS+=	${GO_XFLAG_PREFIX}.Version=${PKGVERSION_NOREV}

PKG_SYSCONFSUBDIR=	prometheus

USE_TOOLS+=	pax
BUILD_DEFS+=	VARBASE PKG_SYSCONFDIR

SUBST_CLASSES+=		paths
SUBST_FILES.paths+=	cmd/prometheus/main.go
SUBST_STAGE.paths=	post-configure
SUBST_VARS.paths=	PKG_SYSCONFDIR VARBASE

SUBST_CLASSES+=		webui
SUBST_FILES.webui=	web/ui/ui.go
SUBST_STAGE.webui=	post-configure
SUBST_VARS.webui=	WEBUI_DIR

MAKE_DIRS+=	${PKG_SYSCONFDIR}/consoles ${PKG_SYSCONFDIR}/console_libraries
EXAMPLE_DIR=	share/examples/prometheus
EXAMPLE_FILES=	prometheus.yml
EXAMPLE_FILES+=	consoles/index.html.example consoles/node-cpu.html \
		consoles/node-disk.html consoles/node-overview.html \
		consoles/node.html consoles/prometheus-overview.html \
		consoles/prometheus.html
EXAMPLE_FILES+=	console_libraries/menu.lib console_libraries/prom.lib
WEBUI_DIR=	${PREFIX}/share/prometheus

INSTALLATION_DIRS+=	${EXAMPLE_DIR} ${WEBUI_DIR}

.for f in ${EXAMPLE_FILES}
CONF_FILES+=	${EXAMPLE_DIR}/${f} ${PKG_SYSCONFDIR}/${f}
.endfor

post-extract:
	${CHMOD} -x ${WRKDIR}/static/react/favicon.ico ${WRKDIR}/static/react/manifest.json
	${CP} -R ${WRKDIR}/static/react ${WRKSRC}/web/ui/static

do-build:
.for f in prometheus promtool
	${RUN} cd ${WRKSRC} && ${_ULIMIT_CMD} ${PKGSRC_SETENV} ${MAKE_ENV} \
		${GO} install -v -ldflags ${GO_LDFLAGS:Q} ./cmd/${f}/...
.endfor

post-install:
	${INSTALL_DATA} ${WRKSRC}/documentation/examples/prometheus.yml \
		${DESTDIR}${PREFIX}/${EXAMPLE_DIR}
.for f in consoles console_libraries
	cd ${WRKSRC} && ${PAX} -rw ${f} ${DESTDIR}${PREFIX}/${EXAMPLE_DIR}
.endfor
	cd ${WRKSRC}/web/ui && ${PAX} -rw static ${DESTDIR}${WEBUI_DIR}
	${CHMOD} -R g-w ${DESTDIR}${WEBUI_DIR}/static
.for f in ${EXAMPLE_FILES}
	${CHMOD} ${NONBINMODE} ${DESTDIR}${PREFIX}/${EXAMPLE_DIR}/${f}
.endfor

.include "../../lang/go/go-module.mk"
.include "../../mk/bsd.pkg.mk"
