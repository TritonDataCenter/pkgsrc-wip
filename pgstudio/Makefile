# $NetBSD$

DISTNAME=	pgstudio-src_2.0
PKGNAME=	${DISTNAME:C/-src_/-/}
CATEGORIES=	databases
MASTER_SITES=	http://downloads.postgresqlstudio.org/2.0/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.postgresqlstudio.org/about/
COMMENT=	GUI to manage PostgreSQL database
LICENSE=	postgresql-license

TOOL_DEPENDS+=	apache-ant-[0-9]*:../../devel/apache-ant
DEPENDS+=	apache-tomcat-[0-9]*:../../www/apache-tomcat8
DEPENDS+=	p5-CGI-[0-9]*:../../www/p5-CGI

INSTALLATION_DIRS+=	share/tomcat/webapps

USE_LANGUAGES=	# none

do-build:
	${RUN}${_ULIMIT_CMD} cd ${WRKSRC} && \
	${PKGSRC_SETENV} ${MAKE_ENV} \
	ant clean && ant deploy

do-install:
	${INSTALL_DATA} ${WRKSRC}/pgstudio.war  ${DESTDIR}${PREFIX}/share/tomcat/webapps/

.include "../../mk/bsd.pkg.mk"
