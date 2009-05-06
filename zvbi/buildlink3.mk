# $NetBSD$

BUILDLINK_TREE+=	zvbi

.if !defined(ZVBI_BUILDLINK3_MK)
ZVBI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.zvbi+=	zvbi>=0.2.16
BUILDLINK_PKGSRCDIR.zvbi?=	../../wip/zvbi

.include "../../textproc/libunicode/buildlink3.mk"
.endif # ZVBI_BUILDLINK3_MK

BUILDLINK_TREE+=	-zvbi
