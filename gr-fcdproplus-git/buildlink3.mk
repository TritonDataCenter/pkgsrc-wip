# $NetBSD$

BUILDLINK_TREE+=	gr-fcdproplus

.if !defined(GR_FCDPROPLUS_BUILDLINK3_MK)
GR_FCDPROPLUS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gr-fcdproplus+=	gr-fcdproplus>=3.6
BUILDLINK_ABI_DEPENDS.gr-fcdproplus+=	gr-fcdproplus>=3.6
BUILDLINK_PKGSRCDIR.gr-fcdproplus?=	../../wip/gr-fcdproplus
.endif # GR_FCDPROPLUS_BUILDLINK3_MK

BUILDLINK_TREE+=	-gr-fcdproplus
