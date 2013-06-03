# $NetBSD$

BUILDLINK_TREE+=	spice-protocol

.if !defined(SPICE_PROTOCOL_BUILDLINK3_MK)
SPICE_PROTOCOL_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.spice-protocol?=	build

BUILDLINK_API_DEPENDS.spice-protocol+=	spice-protocol>=0.12.5
BUILDLINK_PKGSRCDIR.spice-protocol?=	../../wip/spice-protocol
.endif	# SPICE_PROTOCOL_BUILDLINK3_MK

BUILDLINK_TREE+=	-spice-protocol
