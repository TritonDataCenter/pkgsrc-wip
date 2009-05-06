# $NetBSD$

BUILDLINK_TREE+=	aolserver4

BUILDLINK_API_DEPENDS.aolserver4+=		aolserver>=4.0.7
BUILDLINK_PKGSRCDIR.aolserver4?=	../../wip/aolserver4

.include "../../mk/pthread.buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"

BUILDLINK_TREE+=	-aolserver4
