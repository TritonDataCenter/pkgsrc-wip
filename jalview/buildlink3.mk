# $NetBSD$

BUILDLINK_TREE+=	jalview_binary

BUILDLINK_API_DEPENDS.jalview_binary+=	jalview_binary>=1.8
BUILDLINK_PKGSRCDIR.jalview_binary?=	../../wip/jalview
.endif # JALVIEW_BINARY_BUILDLINK3_MK

BUILDLINK_TREE+=	-jalview_binary
