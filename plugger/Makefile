# $NetBSD$
#

DISTNAME=	plugger-4.0
CATEGORIES=	www
MASTER_SITES=	http://fredrik.hubbe.net/plugger/
MASTER_SITES+=	ftp://ftp.netscape.com/pub/sdk/plugin/unix/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} unix-sdk-3.0b5.tar.Z

MAINTAINER=	airhead@sourceforge.net
HOMEPAGE=	http://fredrik.hubbe.net/plugger/plugger.html
COMMENT=	Plugin for multimedia types in Mozilla, Netscape and Opera

USE_X11=	YES
ALL_TARGET=	auto

# Remove the following lines when the package will install
NO_PKG_REGISTER=	YES
${INSTALL}:	all
	@${ECHO} "		-=-=-=-=-=WARNING=-=-=-=-=-"
	@${ECHO} This package does not install yet, please refer to the mailinglists

.include "../../mk/bsd.pkg.mk"
