# $NetBSD$

DISTNAME=		pan2-2
CATEGORIES=		news
MASTER_SITES=		https://gitlab.gnome.org/GNOME/pan/
GIT_REPO=		https://gitlab.gnome.org/GNOME/pan.git

MAINTAINER=		rhialto@falu.nl
HOMEPAGE=		http://pan.rebelbase.com/
COMMENT=		Newsreader for GTK3 and GTK2
LICENSE=		gnu-gpl-v2

TOOL_DEPENDS+=		gnome-common>=3.6.0nb1:../../devel/gnome-common
TOOL_DEPENDS+=		gettext-tools-[0-9]*:../../devel/gettext-tools

USE_TOOLS+=		autoconf automake gettext-m4 gmake perl pkg-config
USE_LIBTOOL=		yes
USE_LANGUAGES+=		c c++
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-gnutls

CONFIGURE_ENV+=		MSGCONV=${PREFIX}/bin/msgconv
CONFIGURE_ENV+=		MSGMERGE=${PREFIX}/bin/msgmerge
CONFIGURE_ENV+=		MSGINIT=${PREFIX}/bin/msginit

pre-configure:
	cd ${WRKSRC} && autoreconf -fiv

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mail/gmime3/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"			# optional
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/gtkspell3/buildlink3.mk"		# optional
.include "../../textproc/enchant2/buildlink3.mk"		# optional; why not pulled in by gtkspell?
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
