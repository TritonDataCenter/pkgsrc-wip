# $NetBSD$

BUILDLINK_TREE+=	Rbigmemory

.if !defined(RBIGMEMORY_BUILDLINK3_MK)
RBIGMEMORY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.Rbigmemory+=	R-bigmemory>=4.2.11
BUILDLINK_ABI_DEPENDS.Rbigmemory+=	R-bigmemory>=4.3.0
BUILDLINK_PKGSRCDIR.Rbigmemory?=	../../wip/R-bigmemory
.endif # RBIGMEMORY_BUILDLINK3_MK

BUILDLINK_TREE+=	-Rbigmemory
