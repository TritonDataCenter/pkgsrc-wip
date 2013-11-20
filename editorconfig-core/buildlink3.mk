# $NetBSD$

BUILDLINK_TREE+=	editorconfig-core

.if !defined(EDITORCONFIG_CORE_BUILDLINK3_MK)
EDITORCONFIG_CORE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.editorconfig-core+=	editorconfig-core>=0.11.5
BUILDLINK_PKGSRCDIR.editorconfig-core?=	../../wip/editorconfig-core
.endif	# EDITORCONFIG_CORE_BUILDLINK3_MK

BUILDLINK_TREE+=	-editorconfig-core
