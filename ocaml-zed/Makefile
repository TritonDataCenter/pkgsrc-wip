# $NetBSD$

PKGNAME=	ocaml-${DISTNAME}
DISTNAME=	zed-1.2
CATEGORIES=	textproc
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/944/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://forge.ocamlcore.org/projects/zed/
COMMENT=	Zed is an abstract engine for text edition
LICENSE=	modified-bsd

OCAML_USE_OASIS=	yes

.include "../../wip/ocaml-camomile/buildlink3.mk"
.include "../../devel/ocaml-react/buildlink3.mk"
.include "../../lang/camlp4/buildlink3.mk"
.include "../../mk/ocaml.mk"
.include "../../mk/bsd.pkg.mk"
