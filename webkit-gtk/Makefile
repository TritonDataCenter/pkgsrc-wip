# $NetBSD: Makefile,v 1.86 2014/08/03 22:30:05 wiz Exp $

.include "Makefile.common"

PKGNAME=	${DISTNAME:S/webkitgtk/webkit-gtk/}

COMMENT=	GTK port of the WebKit browser engine

#introspection support
BUILDLINK_API_DEPENDS.gtk2+=	gtk2+>=2.24.17nb3
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../graphics/cairo-gobject/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
