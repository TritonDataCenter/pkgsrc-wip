# $NetBSD$

BUILDLINK_TREE+=	netclasses

.if !defined(NETCLASSES_BUILDLINK3_MK)
NETCLASSES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.netclasses+=	netclasses>=1.06
BUILDLINK_PKGSRCDIR.netclasses?=	../../wip/netclasses
.endif # NETCLASSES_BUILDLINK3_MK

BUILDLINK_TREE+=	-netclasses
