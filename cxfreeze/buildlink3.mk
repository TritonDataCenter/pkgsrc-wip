# $NetBSD$

BUILDLINK_TREE+=	cx_Freeze

.if !defined(CX_FREEZE_BUILDLINK3_MK)
CX_FREEZE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cx_Freeze+=	cx_Freeze>=4.1.2nb1
BUILDLINK_PKGSRCDIR.cx_Freeze?=	../../wip/cxfreeze
.endif	# CX_FREEZE_BUILDLINK3_MK

BUILDLINK_TREE+=	-cx_Freeze
