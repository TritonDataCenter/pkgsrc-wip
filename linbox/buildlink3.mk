# $NetBSD$

BUILDLINK_TREE+=	linbox

.if !defined(LINBOX_BUILDLINK3_MK)
LINBOX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.linbox+=	linbox>=1.1.7
BUILDLINK_PKGSRCDIR.linbox?=	../../wip/linbox


.include "../../math/blas/buildlink3.mk"
.include "../../wip/givaro/buildlink3.mk"
.endif	# LINBOX_BUILDLINK3_MK

BUILDLINK_TREE+=	-linbox
