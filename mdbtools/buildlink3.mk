# $NetBSD$

BUILDLINK_TREE+=	mdbtools

.if !defined(MDBTOOLS_BUILDLINK3_MK)
MDBTOOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mdbtools+=	mdbtools>=0.6pre1
BUILDLINK_ABI_DEPENDS.mdbtools+=	mdbtools>=0.6pre1
BUILDLINK_PKGSRCDIR.mdbtools?=	../../wip/mdbtools

.include "../../devel/glib2/buildlink3.mk"
.endif # MDBTOOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-mdbtools
