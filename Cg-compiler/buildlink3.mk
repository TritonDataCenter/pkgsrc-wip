# $NetBSD$

BUILDLINK_TREE+=	Cg-compiler

.if !defined(CG_COMPILER_BUILDLINK3_MK)
CG_COMPILER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.Cg-compiler+=	Cg-compiler>=3.1
BUILDLINK_PKGSRCDIR.Cg-compiler?=	../../wip/Cg-compiler
.endif	# CG_COMPILER_BUILDLINK3_MK

BUILDLINK_TREE+=	-Cg-compiler
