# $NetBSD$

BUILDLINK_TREE+=	llvm-rtlib

.if !defined(LLVM_RTLIB_BUILDLINK3_MK)
LLVM_RTLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.llvm-rtlib+=	llvm-rtlib>=2.8
BUILDLINK_PKGSRCDIR.llvm-rtlib?=	../../wip/llvm-rtlib
.endif

BUILDLINK_TREE+=	-llvm-rtlib
