# $NetBSD$

DISTNAME=	alt-ergo-0.93
CATEGORIES=	devel
MASTER_SITES=	http://ergo.lri.fr/http/

MAINTAINER=	MarkoSchuetz@web.de
HOMEPAGE=	http://ergo.lri.fr/http/
COMMENT=	Automatic theorem prover for program verification

USE_TOOLS+=	gmake

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c


.include "../../lang/ocaml/buildlink3.mk"
.include "../../devel/ocamlgraph/buildlink3.mk"
.include "../../devel/nspr/buildlink3.mk"
.include "../../x11/ocaml-lablgtk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
