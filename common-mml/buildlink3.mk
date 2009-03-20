# $NetBSD$

BUILDLINK_TREE+=	common-mml

.if !defined(COMMON_MML_BUILDLINK3_MK)
COMMON_MML_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.common-mml+=	common-mml>=1.2.18
BUILDLINK_PKGSRCDIR.common-mml?=	../../wip/common-mml
.endif # COMMON_MML_BUILDLINK3_MK

BUILDLINK_TREE+=	-common-mml
