# $NetBSD: Makefile,v 1.9 2020/06/02 08:24:54 adam Exp $
#

DISTNAME=	SOGo-5.5.0
CATEGORIES=	www
MASTER_SITES=	https://packages.inverse.ca/SOGo/sources/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.sogo.nu/
COMMENT=	Groupware server supporting CalDAV, CardDAV and GroupDAV
LICENSE=	gnu-gpl-v2

HAS_CONFIGURE=	yes
USE_TOOLS+=	bash gmake zip:run pkg-config

CONFIG_SHELL=	bash
CONFIGURE_ARGS=	--enable-debug --disable-strip
MAKE_JOBS_SAFE=	no

SOGOUSER?=	sogo
SOGOGROUP?=	sogo
SOGOETCDIR?=	${PKG_SYSCONFDIR}
SOGORUNDIR?=	${VARBASE}/sogo

INSTALLATION_DIRS+=	share/examples/SOGo

CONF_FILES+=		share/examples/SOGo/sogo-conf.sh \
			${PKG_SYSCONFDIR}/sogo-conf.sh
CONF_FILES+=		share/examples/SOGo/SOGo.conf \
			${PKG_SYSCONFDIR}/SOGo.conf
OWN_DIRS+=		${SOGOETCDIR}
OWN_DIRS+=		${SOGORUNDIR}
OWN_DIRS_PERMS+=	${SOGOETCDIR} ${SOGOUSER} ${SOGOGROUP} 0755
OWN_DIRS_PERMS+=	${SOGORUNDIR} ${SOGOUSER} ${SOGOGROUP} 0755
BUILD_DEFS+=		VARBASE

PKG_GROUPS+=		${SOGOGROUP}
PKG_USERS+=		${SOGOUSER}:${SOGOGROUP}
PKG_HOME.${SOGOUSER}=	${SOGOETCDIR}
PKG_SHELL.${SOGOUSER}=	${SH}
PKG_GECOS.${SOGOUSER}=	SOGo daemon user

PKG_SYSCONFSUBDIR=	sogo

FILES_SUBST+=	SOGORUNDIR=${SOGORUNDIR}
FILES_SUBST+=	SOGOETCDIR=${SOGOETCDIR}
FILES_SUBST+=	SOGOUSER=${SOGOUSER}
RCD_SCRIPTS=	sogod

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fixing hardcoded paths.
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	SoObjects/SOGo/SOGoSystemDefaults.m
SUBST_SED.paths=	-e 's,/etc/sogo/,${PKG_SYSCONFDIR}/,g'

BUILDLINK_TRANSFORM.SunOS+=	rm:-pie

FIX_PERMS= \
	SoObjects/Mailer/SOGoMailLithuanianForward.wo/SOGoMailLithuanianForward.html \
	SoObjects/Mailer/SOGoMailLithuanianForward.wo/SOGoMailLithuanianForward.wod \
	SoObjects/Mailer/SOGoMailLithuanianReply.wo/SOGoMailLithuanianReply.html \
	SoObjects/Mailer/SOGoMailLithuanianReply.wo/SOGoMailLithuanianReply.wod \
	UI/MainUI/MainUI.SOGo/Resources/Slovenian.lproj/Locale \
	UI/Templates/SOGoACLLithuanianAdditionAdvisory.wox \
	UI/Templates/SOGoACLLithuanianModificationAdvisory.wox \
	UI/Templates/SOGoACLLithuanianRemovalAdvisory.wox \
	UI/Templates/SOGoFolderLithuanianAdditionAdvisory.wox \
	UI/Templates/SOGoFolderLithuanianRemovalAdvisory.wox \
	UI/WebServerResources/css/icons.css

pre-install:
.for f in ${FIX_PERMS}
	${CHMOD} ${NONBINMODE} ${WRKSRC}/${f}
.endfor

# \todo Do the sed at build time and only copy at install time.
post-install:
	${SED} -e "s|@SOGOUSER@|${SOGOUSER}|" ${FILESDIR}/sogo-conf.sh > \
	  ${DESTDIR}${PREFIX}/share/examples/SOGo/sogo-conf.sh
	${SED} -e "s|/usr/GNUstep/System/Library|${PREFIX}/lib/GNUstep|" \
	  ${WRKSRC}/Apache/SOGo.conf > \
	  ${DESTDIR}${PREFIX}/share/examples/SOGo/SOGo.conf
	${SED} -e "s|@PREFIX@|${PREFIX}|" ${FILESDIR}/SOGo.conf >> \
	  ${DESTDIR}${PREFIX}/share/examples/SOGo/SOGo.conf

# options.mk are not supported because gnustep-make/-base set
# PKG_OPTIONS_VAR to support the fragile option.
.include "../../security/libsodium/buildlink3.mk"

.include "../../devel/gnustep-base/buildlink3.mk"
.include "../../devel/gnustep-make/buildlink3.mk"
.include "../../devel/SOPE5/buildlink3.mk"
.include "../../devel/libmemcached/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../archivers/libzip/buildlink3.mk"
.include "../../mail/libytnef/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
