# $NetBSD$

DISTNAME=	gnome-builder-41.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-builder/41/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	dan@alt.md
HOMEPAGE=	https://wiki.gnome.org/Apps/Builder
COMMENT=	IDE/toolsmith for GNOME-based applications
LICENSE=	gnu-gpl-v3

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		pkg-config xgettext

MESON_ARGS+=		-Dplugin_flatpak=false
MESON_ARGS+=		-Dplugin_git=false
MESON_ARGS+=		-Dplugin_sysprof=false
MESON_ARGS+=		-Dplugin_update_manager=false
MESON_ARGS+=		-Dplugin_color_picker=false
MESON_ARGS+=		-Dplugin_dspy=false
MESON_ARGS+=		-Dplugin_devhelp=false

CFLAGS+=		-Wno-error=shadow

SUBST_CLASSES+=		python
SUBST_STAGE.python=	pre-configure
SUBST_FILES.python=	src/plugins/gradle/gradle_plugin.py
SUBST_FILES.python+=	src/plugins/maven/maven_plugin.py
SUBST_FILES.python+=	build-aux/meson/post_install.py
SUBST_SED.python=	-e 's,/usr/bin/env python3,${PREFIX}/bin/python${PYVERSSUFFIX},g'

SUBST_CLASSES+=		pymod
SUBST_STAGE.pymod=	pre-configure
SUBST_FILES.pymod=	src/libide/meson.build
SUBST_SED.pymod=	-e 's,python3,${PREFIX}/bin/python${PYVERSSUFFIX},g'

PLIST_SUBST+=		PYSITELIB=${PYSITELIB}

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../textproc/cmark/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../lang/clang/buildlink3.mk"
.include "../../textproc/gspell/buildlink3.mk"
.include "../../devel/glade/buildlink3.mk"
.include "../../devel/devhelp/buildlink3.mk"
.include "../../www/webkit-gtk/buildlink3.mk"
.include "../../x11/vte3/buildlink3.mk"
.include "../../wip/template-glib/buildlink3.mk"
.include "../../devel/libpeas/buildlink3.mk"
.include "../../wip/jsonrpc-glib/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../x11/gtksourceview4/buildlink3.mk"
.include "../../devel/libdazzle/buildlink3.mk"
.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
