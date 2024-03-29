# $NetBSD: Makefile,v 1.201 2020/11/05 09:09:20 ryoon Exp $

DISTNAME=	epiphany-42.2
CATEGORIES=	www gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/epiphany/42/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://wiki.gnome.org/Apps/Web
COMMENT=	Web browser for the GNOME desktop
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config msgfmt xgettext gdbus-codegen itstool

MESON_ARGS+=	-Dunit_tests=disabled
MESON_ARGS+=	-Dlibportal=disabled

LDFLAGS+=	${COMPILER_RPATH_FLAG}${PREFIX}/lib/epiphany

PYTHON_FOR_BUILD_ONLY=	tool

.include "../../devel/meson/build.mk"
.include "../../archivers/libarchive/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
BUILDLINK_API_DEPENDS.libdazzle+=	libdazzle>=3.35.3
.include "../../devel/libdazzle/buildlink3.mk"
.include "../../devel/libhandy/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../security/gcr/buildlink3.mk"
.include "../../security/nettle/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../www/webkit-gtk/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
