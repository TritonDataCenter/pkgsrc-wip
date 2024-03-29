# $NetBSD$

DISTNAME=	XSB-5.0
CATEGORIES=	lang
MASTER_SITES=	https://sourceforge.net/projects/xsb/files/xsb/5.0%20%28Green%20Tea%29/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://xsb.sourceforge.net/
COMMENT=	Logic Programming and Deductive Database system
LICENSE=	gnu-lgpl-v2

WRKSRC=		${WRKDIR}/XSB/build

# There is "hard link not found" error for MSVC.sh with stock tar
EXTRACT_USING=	gtar

USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes
GNU_CONFIGURE_STRICT=	no
USE_GNU_CONFIGURE_HOST=	no

XSB_VERSION_STR=	xsb-5.0.0
# The source uses P_tmpdir, u_long which are under _NETBSD_SOURCE flag in respective headers
CONFIGURE_ARGS.NetBSD+=	--with-cflags=-D_NETBSD_SOURCE
CONFIGURE_ARGS+=	--with-site-prefix=${PREFIX}/${XSB_VERSION_STR}
CONFIGURE_ARGS+=	--exec-prefix=${PREFIX}/${XSB_VERSION_STR}

REPLACE_BASH+=	${WRKDIR}/XSB/packages/xasp/makelinks.sh
XSB_PREFIXDIR=	${DESTDIR}${PREFIX}/${XSB_VERSION_STR}
XSB_PKGDIR=	${XSB_PREFIXDIR}/packages

do-build:
	cd ${WRKSRC} && ./makexsb fast packages

# Regarding "XSB packages" : XSB makefile just copies the directories. The "XSB
# package" makefiles do not have a proper install target. At present we are
# just deleting the packages from the install area.
#
# Post installation, when a non root user runs xsb, XSB tries to compile the .P
# again in the installation area. To avoid this we delete the .P files from the
# package. They are not needed as their compiled counterparts .xwam files are
# already packaged.

XSB_CONFIG_NAME=	`${WRKSRC}/config.guess`
REMOVE_P+=		${XSB_PREFIXDIR}/config/${XSB_CONFIG_NAME}/lib/xsb_configuration.P
REMOVE_P+=		${XSB_PREFIXDIR}/lib/prolog_db_doc/prolog_db_format.P
REMOVE_P+=		${XSB_PREFIXDIR}/syslib/debugger_data.P

do-install:
	cd ${WRKSRC} && DESTDIR=${DESTDIR} ./makexsb install && \
	rm -rf ${XSB_PKGDIR} ${REMOVE_P}

.include "../../devel/pcre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
