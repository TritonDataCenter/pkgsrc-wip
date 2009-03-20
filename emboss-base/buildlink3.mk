# $NetBSD$

BUILDLINK_TREE+=	emboss-base

BUILDLINK_API_DEPENDS.emboss-base+=	emboss-base>=2.7.1
BUILDLINK_PKGSRCDIR.emboss-base?=	../../wip/emboss-base
.endif # EMBOSS_BASE_BUILDLINK3_MK

BUILDLINK_TREE+=	-emboss-base
