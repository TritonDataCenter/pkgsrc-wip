# $NetBSD$

BUILDLINK_TREE+=	editline

.if !defined(EDITLINE_BUILDLINK3_MK)
EDITLINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.editline+=	editline>=2.11
BUILDLINK_PKGSRCDIR.editline?=	../../wip/editline
.endif # EDITLINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-editline
