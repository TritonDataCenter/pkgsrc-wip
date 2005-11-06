# $NetBSD$
#

.include "../../wip/pornview/Makefile.common"

PKGNAME=		${DISTNAME:S/pornview/pornview-gtk2/}

COMMENT=		(GTK+ 2.0 interface)

CONFLICTS=		pornview-[0-9]*

CONFIGURE_ARGS+=	--with-gtk2

.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
