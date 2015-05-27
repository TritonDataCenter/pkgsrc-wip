# $NetBSD$
.include "../../wip/dwb-gtk3/Makefile.common"

PKGNAME=        ${DISTNAME:S/dwb/dwb-gtk3/}
COMMENT=	Dynamic WebKit browser, gtk3 version

MAKE_ENV+=	GTK=3

.include "../../wip/webkit-gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
