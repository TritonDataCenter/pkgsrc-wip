# $NetBSD: Makefile,v 1.4 2008/09/06 20:50:02 wiz Exp $
#

DISTNAME=	jpnfont
CATEGORIES=	fonts
DISTFILES=	FontPack910_jpn_i486-linux.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Asian Font Packs for Acrobat Reader 9 (Japanese)

DEPENDS+=	acroread9-font-share>=9.1:../../wip/acroread9-font-share

WRKSRC=		${WRKDIR}/JPNKIT
TAR_FILE=	${WRKSRC}/LANGJPN.TAR

.include "../../wip/acroread9-font-share/Makefile.common"
