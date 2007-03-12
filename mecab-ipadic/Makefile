# $NetBSD$
#

.include "../../wip/mecab/Makefile.common"

DISTNAME=	mecab-ipadic-2.7.0-20060707
PKGNAME=	mecab-ipadic-2.7.0.20060707
CATEGORIES=	japanese textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mecab/}

MAINTAINER=	obata@lins.jp
HOMEPAGE=	http://mecab.sourceforge.net/
COMMENT=	Japanese Morphological Dictionary for MeCab

DEPENDS+=	mecab-base>=${MECAB_VERSION}:../../wip/mecab-base

GNU_CONFIGURE=	yes

.include "../../mk/bsd.pkg.mk"
