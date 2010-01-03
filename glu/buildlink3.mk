# $NetBSD$

BUILDLINK_TREE+=	glu

.if !defined(GLU_BUILDLINK3_MK)
GLU_BUILDLINK3_MK:=

BUILDLINK_ABI_DEPENDS.glu+=	glu>=7.7
BUILDLINK_API_DEPENDS.glu+=	glu>=7.7
BUILDLINK_PKGSRCDIR.glu?=	../../wip/glu

.include "../../wip/gl/buildlink3.mk"
.endif	# GLU_BUILDLINK3_MK

BUILDLINK_TREE+=	-glu
